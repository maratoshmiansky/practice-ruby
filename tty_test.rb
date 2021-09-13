require "tty-prompt"

prompt = TTY::Prompt.new

inputname = prompt.ask("What is your name?", default: ENV["USER"])

if inputname == "Michelle"
  puts "Hi, Michelle!"
else
  puts "Hey, you!"
end
