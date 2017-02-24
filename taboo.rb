
if $Score1>=5
  puts "#{$teamname1}, you have won with #{$Score1}points"#Determins which team wins
elsif $Score2>=5
  puts "#{$teamname2}, you have won with #{$Score2}points"#Determins which team wins
end










#Makes the taboo class
class Taboo
  #This defines what a new Taboo starts with, which is two team names
  def initialize(teamname1="Team 1",teamname2="Team 2")
    $teamname1=teamname1
    $teamname2=teamname2#makes teamname into a global variable
    @@questions={
      "Mountain"=>"Hill, Rocks, Slope, Large, Valley"
      "Elephant"=>"Big, Heavy, Trunk, Africa, Animal"
      "Stawberry"=>"Fruit, Red, Sweet, Food, Juicy"
      "Summer"=>"Hot, Sunny, School, Season, Vacation"
      
    }
    $Score1=0
    $Score2=0#keeps track of the score
  end
end

game1=Taboo.new("Teagan","Tommy")
