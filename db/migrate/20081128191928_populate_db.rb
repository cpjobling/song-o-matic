class PopulateDb < ActiveRecord::Migration
  def self.up
  	beatles = "The Beatles"
  	landm = "John Lennon and Paul McCartney"
  	
  	help = Song.create(:title => "Help!", 
  		:composer => landm, 
  		:artist_or_group => beatles)
  	help.save!
  	
  	please = Song.create(:title => "Please, Please Me",
  		:composer => landm,
  		:artist_or_group => beatles)
  	please.save!
  	
  	space = Song.create(:title => "Space Oddity", 
  		:composer => "David Bowie", 
  		:artist_or_group => "David Bowie and the Spiders from Mars")
  	space.save!
  	
  	subway = Song.create(:title => "Don't Sleep in the Subway Darling", 
  		:composer => "Jackie Trent and Tony Hatch", 
  		:artist_or_group => "Petula Clark")
  	subway.save!
  	
  	wish = Song.create(:title => "Wish You Where Here", 
  		:composer => "Roger Waters and David Gilmour", 
  		:artist_or_group => "Pink Floyd")
  	wish.save!
  	
  	magic = Song.create(:title => "It's a Kind of Magic",
  		:composer => "Freddy Mercury",
        :artist_or_group => "Queen")
    magic.save!
  	
  end

  def self.down
  	Songs.delete_all
  end
end
