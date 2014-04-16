# 11_Build_your_own_playlist.rb

Dir.chdir 'music/'
# 'music/genre/artist_and_cd_names/track_number.ogg'

names = Dir['**/*.{ogg,mp3}']
names = names.shuffle

name_list = ''
names.each do |name|
  name_list += "#{name}\n"
end

File.open 'playlist.m3u', 'w' do |f|
  f.write file_list
end
