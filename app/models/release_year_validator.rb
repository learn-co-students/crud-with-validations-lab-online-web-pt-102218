class ReleaseYearValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if record.released
      if value != nil && value < Date.today.year
        return true
      else
        record.errors[attribute] << (options[:message] || "invalid release year")
      end
    else
      return true
    end
  end
end
