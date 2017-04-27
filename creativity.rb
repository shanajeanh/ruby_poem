require 'pry'

def brainstorm(ideas)
  new_idea = gets.chomp
  if new_idea == "butts"
    puts "Really, butts again. Well, okay, fine."
  elsif new_idea == ""
    puts "You can do this!"
    return nil
  end
  ideas << new_idea
end

def give_up?
  puts "Are you ready to give up? yes or no"
  quitter = gets.chomp.downcase
  if quitter == "yes"
    true
  elsif quitter == "no"
    false
  else
    puts "Do or do not. There is no try. yes or no."
    give_up?
  end
end
