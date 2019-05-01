class SongsController < ApplicationController
    def index 
        @songs = all_songs
    end

    def show
        @song = find_song_id
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params)
        if @song.valid?
            @song.save
            redirect_to song_path(@song)
        else 
            render :new
        end 
    end 

    def edit 
        @song = find_song_id
    end

    def update
        @song = find_song_id
        @song.update(song_params)
        if @song.valid?
            @song.save
            redirect_to song_path(@song)
        else 
            render :edit
        end
    end

    def destroy
        @song = find_song_id
        @song.destroy 

        redirect_to songs_path
    end 

    private 

    def song_params
        params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    end

    def all_songs
        Song.all
    end

    def find_song_id
        Song.find(params[:id])
    end

end
