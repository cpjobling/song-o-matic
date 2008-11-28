class PopulateDb < ActiveRecord::Migration
  def self.up
  	beatles = "The Beatles"
  	LandM = "John Lennon and Paul McCartney"
  	
  	help = Songs.create(:title => "Help!", 
  		:composer => LandM, 
  		:artist_or_group => beatles)
  	help.save!
  	
  	please = Songs.create(:title => "Please, Please Me",
  		:composer => LandM,
  		:artist_or_group = beatles)
  	
  	space = Songs.create(:title => "Space Oddity", 
  		:composer => "David Bowie", 
  		:artist_or_group => "David Bowie and the Spiders from Mars")
  	space.save!
  	
  	subway = Songs.create(:title => "Don't Sleep in the Subway Darling", 
  		:composer => "Jackie Trent and Tony Hatch", 
  		:artist_or_group => "Petula Clark")
  	subway.save!
  	
  	wish = Songs.create(:title => "Wish You Where Here", 
  		:composer => "Roger Waters and David Gilmour", 
  		:artist_or_group => "Pink Floyd")
  	wish.save!
  	
    subway = Songs.create(:title => "Don't Sleep in the Subway Darling", 
  		:composer => "Jackie Trent and Tony Hatch", 
  		:artist_or_group => "Petula Clark")
  	subway.save!
  	
  	magic = Songs.create(:title => "It's a Kind of Magic",
  		:composer => "Freddy Mercury",
        :artist_or_group => "Queen";
  	
  end

  def self.down
  	Songs.delete_all
  end
end
