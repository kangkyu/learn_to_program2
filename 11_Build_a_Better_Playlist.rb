# 11_Build_a_Better_Playlist.rb


def music_shuffle filenames
  arr = []
  result_arr = []
  filenames.each do |name|
    name = name.split '/'
    # now it is a nested array
    arr.push name
  end
  arr.shuffle.each do |name|
    name = name.join('/')
    result_arr.push name
  end
  result_arr
end

# all_oggs = music_shuffle(["music/Jazz/Monk--Nutty/track08.ogg", "music/Jazz/Monk--London_Collection_1/track05.ogg", "music/Jazz/Monk--Nutty/track13.ogg", "music/Jazz/Monk--Round_Midnight/track02.ogg", "music/Jazz/Monk--Round_Midnight/track14.ogg", "music/Jazz/Monk--Round_Midnight/track15.ogg", "music/Jazz/Monk--Round_Midnight/track08.ogg", "music/Rock/FNM--Who_Cares_A_Lot_2/track02.ogg", "music/Rock/FNM--Who_Cares_A_Lot_2/track08.ogg", "music/Rock/FNM--Who_Cares_A_Lot_1/track02.ogg", "music/Rock/FNM--Who_Cares_A_Lot_2/track01.ogg"])
all_oggs = music_shuffle(Dir['**/*.ogg'])

File.open 'playlist.txt', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"\n"
  end
end
puts 'Done!'