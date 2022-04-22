require "tty-prompt"
require_relative("./data.rb")

class Interface
  attr_reader :prompt

  def initialize
    @prompt = TTY::Prompt.new
  end

  def welcome
    puts "Welcome to the Pregnancy Calculator!"
    user.name = prompt.ask("What is your name?", required: true)
    puts "Hello #{user.name}."
    sleep(1)
  end

  def main_menu
    prompt.select("Please select an option from the following menu:") do |menu|
      menu.default 1

      menu.choice "Due Date Calculator", 1, -> {due_date_calculator}
      menu.choice "View Disclaimer", 2, -> {disclaimer}
      menu.choice "Exit", 3, -> {exit}
    end
  end

  def due_date_calculator
    puts "You chose Due Date Calculator - to be completed in the future"
  end

  def disclaimer
    puts "You chose Disclaimer - to be completed in the future"
  end

  def exit
    puts "Thank you for using the Pregnancy Calculator"
  end
end

class User
    attr_accessor :name, :week_pregnant, :due_date
end 



# FEATURE 1 - Welcome message
user = User.new
interface = Interface.new
welcome

