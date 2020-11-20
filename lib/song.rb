class Song 
    attr_accessor :artist, :name, :genre
    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def songs(artist)
        self.class.all.collect {|song| song.artist.name == artist}
    end 

    def artist_name
        self.artist.name if self.artist 
    end 
end 

