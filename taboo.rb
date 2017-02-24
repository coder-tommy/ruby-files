
class Taboo #This makes a class called Taboo

  def initialize(teamname1="Team 1", teamname2="Team 2")#This defines what the Taboo game starts with. The two teams.
    @@words={
      "Mountain" => ["Hill", "Big", "Rocks", "Slope", "Valley"],#This is the hash that conatains all the words rhat people need to guess along with Taboo words
      "Elephant" => ["Big", "Animal", "Heavy", "Trunk", "Africa"],
      "Strawberry" => ["Fruit", "Red", "Sweet", "Food", "Juicy"],
      "Summer" => ["Hot", "Sunny", "School", "Season", "Vacation"],
      "Rubber Band" => ["Stretchy", "Rubbery", "Brownish", "Elastic", "Shootable"],
    }
    $teamname1=teamname1#changes teamname to global variable
    $teamname2=teamname2
    $score1=0#Remembers the scores for both teams
    $score2=0
    puts "Directions of the game: Players will split into 2 teams. Then, they will press start and start their own timer. After 5 points, the teams will switch. The second team will go. If the person explaining the word says a taboo word, the lose a point. First to 5 points win. Good luck!"#directions for the game

  end
end



class Game < Taboo  #gets the Taboo class and inputs in to game class

def gameCode #defines gameCode
  until $score1==5 #ends game at 5 points

    a = rand(@@words.length)
    b = @@words.keys[a].to_s
    c = @@words.values[a]
     puts "Word: #{b}\nTaboo: #{c}"#{puts the word you are supposed to guess}
     puts "Taboo or Correct?"
     userInput=gets.chomp.downcase #takes user responce if users guesses correct or Taboo
     if userInput== "Taboo"
       $score1-=1  #subtracts a point if Taboo
     elsif userInput== "correct"
       $score1+=1  #adds a point if right
     end
   end
  puts "-\n-\n-\nTeam 2 it is now your turn\n-\n-\n-"  #switches teams
  until $score2 == 5  #ends game at 5 points
    a = rand(@@words.length)#Gets a random word
    b = @@words.keys[a].to_s#Gets a random word from the key value
    c = @@words.values[a]#Gets a random word from the value key
    puts "Word: #{b}\nTaboo: #{c}"
    puts "Taboo or Correct?"
    userInput2=gets.chomp.downcase  #takes user responce if users guesses correct or Taboo
       if userInput2== "taboo"
         $score2 -=1  #subtracts a point if Taboo
       elsif userInput2== "correct"
         $score2 +=1  #adds a point if right
      end
    end
    puts "Both scores now equal five, whoever was faster to five won!"  #tells users to figure out who won
  end
end
tommy = Game.new("Mimsy", "Tommy")  #gives the teamname
tommy.gameCode
