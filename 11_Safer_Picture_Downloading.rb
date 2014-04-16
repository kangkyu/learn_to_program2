# 11_Safer_Picture_Downloading.rb

Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
pic_names = Dir['F:/**/*.jpg']
puts 'what would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "
pic_number = 1 # This will be our counter
pic_names.each do |name|
  print '.' # This will be our progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  # Safety Feature
  if File.exist? new_name
    exit
  end

  File.rename name, new_name
  pic_number = pic_number + 1
end
puts
puts 'Done, cutie!'