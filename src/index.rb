require "tty-prompt"
prompt = TTY::Prompt.new

class User
    attr_accessor :name, :week_pregnant, :due_date
end 

user = User.new

puts "Welcome to the Pregnancy Calculator!"
user.name = prompt.ask("What is your name?", required: true)


