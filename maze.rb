=begin
in this file you will be telling the user about their surroundings.

1. the person fell into a maze, so you must inform them of that
2. ask the person which direction they would like to go: N,E,S,W
3. Then, based on their choice you are going to print
"#{their_choice}, good choice, you have met the knights who say ni!"
4. if the person does not choose a direction correctly, warn them that they
  have not correctly chosen a direction.

Things you will need
if else end
variables
=
puts
get.chomp
#{}
""
print(if you want)

upload to github!!! Also accept my request to be part of the SBA organization.
=end
puts "You have fallen into a maze, and I would suggest getting out"
puts "Which direction are you thinking of going, North, East, South, or West?"
direction=gets.chomp
if direction=="North"
  puts "Good choice, you have met the Knights who say ni"
elsif direction=="West"
  puts "Unfortunately, West is not the correct answer"
elsif direction=="South"
  puts "Good thinking, however South is not the right direction"
elsif direction=="East"
  puts "Not quite, the way out is not East"
else
  puts "I did not get that, make sure you are replying with either North, East, South, or West, and that the first letter to your answer is upper case"
end
