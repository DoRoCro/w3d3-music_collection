require('pry')
require_relative('./models/artists.rb')
require_relative('./models/albums.rb')

artist1 = Artist.new({"name" => "Bryan Adams"})
artist1.save()
artist2 = Artist.new({"name" => "David Bowie"})
artist2.save()

album1 = Album.new({"title" => "Greatest Hits", "genre" => "Classic Rock", "artist_id" => artist1.artist_id })
album1.save()
album2 = Album.new({"title" => "Hunky Dory", "genre" => "Glam Rock", "artist_id" => artist2.artist_id })
album2.save()

# binding.pry
# nil

puts album2.artist.artist_id + " " + album2.artist.name

artist2.albums.each {|x| puts x.album_id.to_s + " " + x.title }