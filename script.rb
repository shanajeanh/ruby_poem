require_relative 'creativity'

puts "Time to be creative."

ideas = []
keep_trying = !give_up?

while keep_trying
  puts "Think of a new idea."
  brainstorm(ideas)
  keep_trying = !give_up?
end

if ideas.empty?
  puts "Creativity is hard. Last chance. Come on, think of something."
  unless give_up?
    puts "Okay, you can do this. Think of a new idea."
    brainstorm(ideas)
  end
end

unless ideas.empty?
  puts "Look what you've done!"
  ideas.each do |idea|
    puts idea
  end
end
