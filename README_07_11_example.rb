# 11.7 Renaming Your Photos

# class: Dir # refers directory
# method: Dir.[]
# if you just pass in a filename, you'll get
# either an array containing the filename (if it exists)
# or an empty array (if the file doesn't exist)

puts Dir['ParisHilton.jpg'].to_s
puts Dir['*.txt'].to_s

Dir['*.{JPG,jpg}']
# Find me all the files starting with whatever and
# end with a dot and either JPG or jpg
Dir['../*.{JPG,jpg}']
Dir['**/*.{JPG,jpg}']

Dir.chdir
# You could change your current directory
# (just pass in the path to your new working directory)

File.rename
# rename is move, the same thing.

print
# method: it doesn't advance to the next line.
# it's nice for making little progress bars and things.

