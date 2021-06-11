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


colors = ['red','orange','yellow','green','blue','indigo','violet']

def display_rainbow(colors)
  puts "R: #{colors[0]}, O: #{colors[1]}, Y: #{colors[2]}, G: #{colors[3]}, B: #{colors[4]}, I: #{colors[5]}, V: #{colors[6]}"
end

describe '#display_rainbow' do
  it 'accepts one argument' do
    colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

    allow(self).to receive(:puts)

    expect { display_rainbow(colors) }.to_not raise_error(NoMethodError)
    expect { display_rainbow(colors) }.to_not raise_error(ArgumentError)
  end

  it 'prints out the colors of the rainbow correctly when passed in in order' do
    colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

    expect(colors).to receive(:[]).with(0).at_least(:once).and_return("red")
    expect(colors).to receive(:[]).with(1).at_least(:once).and_return("orange")
    expect(colors).to receive(:[]).with(2).at_least(:once).and_return("yellow")
    expect(colors).to receive(:[]).with(3).at_least(:once).and_return("green")
    expect(colors).to receive(:[]).with(4).at_least(:once).and_return("blue")
    expect(colors).to receive(:[]).with(5).at_least(:once).and_return("indigo")
    expect(colors).to receive(:[]).with(6).at_least(:once).and_return("violet")

    expect { display_rainbow(colors) }.to output("R: red, O: orange, Y: yellow, G: green, B: blue, I: indigo, V: violet\n").to_stdout
  end
end
