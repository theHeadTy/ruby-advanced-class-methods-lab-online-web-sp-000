class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    song.save
    return song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song.save
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
  end
  
  def self.find_by_name(name)
    self.all.select { |song| song.name == name }
  end
end


Song.create
