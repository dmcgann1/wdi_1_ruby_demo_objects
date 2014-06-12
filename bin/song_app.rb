# This will "insert" the contents of the song.rb here

require_relative '../lib/song.rb'

# Add code to use the Song class here.

song1 = Song.new('Magic', 'Coldplay', 150, 1.29)
song2 = Song.new('Walk on', 'U2', 130, 0.99)
song3 = Song.new('Fix You', 'Coldplay', 100, 1.49)

puts song1.inspect
puts song2.inspect
puts song3.inspect

def average_duration(song1, song2, song3)
  (song1.duration + song2.duration + song3.duration)/3
end

puts average_price = (song1.price + song2.price + song3.price)/3

song1.duration = 20

puts average_duration(song1, song2, song3)
