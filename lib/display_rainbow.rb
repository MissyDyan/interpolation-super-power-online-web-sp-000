# Write your #display_rainbow method here
# def display_rainbow(colors)
#   letters = ["R", "O", "Y", "G", "B", "I", "V"]
#   red = "R: red"
#   orange = "O: orange"
#   yellow = "Y: yellow"
#   green = "G: green"
#   blue = "B: blue"
#   indigo = "I: indigo"
#   violet = "V: violet"
#   colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
#   puts "The first letter in the alphabet is: #{letters[4]}"
#   puts "The second letter in the alphabet is: #{letters[3]}"
#   puts "The third letter in the alphabet is: #{letters[5]}"
#   puts "The fourth letter in the alphabet is: #{letters[1]}"
#   puts "The fifth letter in the alphabet is: #{letters[0]}"
#   puts "The sixth letter in the alphabet is: #{letters[6]}"
#   puts "The seventh letter in the alphabet is: #{letters[2]}"
# end
# 
# display_rainbow


colors=['red','orange','yellow','green','blue','indigo','violet']

def display_rainbow(colors)
  puts "R: #{colors[0]}, O: #{colors[1]}, Y: #{colors[2]}, G: #{colors[3]}, B: #{colors[4]}, I: #{colors[5]}, V: #{colors[6]}"
end
