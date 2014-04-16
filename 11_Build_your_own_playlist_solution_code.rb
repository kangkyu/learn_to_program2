# 11_Build_your_own_playlist_solution_code.rb

all_oggs = Shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"n"
  end
end
puts 'Done!'