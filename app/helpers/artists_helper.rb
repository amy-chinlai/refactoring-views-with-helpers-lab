module ArtistsHelper

    def display_artist(input)
        artist = Song.find(input.id).artist
        if artist != "" && artist
            link_to artist.name, artist_path(artist)
        else
            link_to "Add Artist", edit_song_path(input)
        end

    end
end
