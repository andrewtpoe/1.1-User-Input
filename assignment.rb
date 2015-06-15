# 1.1 User Input Assignment

puts "Hello. Please tell me your name."

name_LCV = 1
while name_LCV == 1
  print ">> "
  name = gets.chomp
  print ""

  if name == ""
    puts "You must enter a name to proceed."
    puts "Please type your name below."
  else
    puts "Thank you."
    puts ""
    name_LCV = 0
  end
end

puts "Tell me, #{name}, what are your views on the law?"
puts %{\t1. I am law abiding!
\t2. I make sure others obey the law.
\t3. I live outside the law.
\t4. Questionable.}
puts "Please enter a selection from the menu above."

decision_LCV = 1
while decision_LCV == 1
  print ">> "
  decision = gets.chomp
  print ""

  valid_menu_options = ['1', '2', '3', '4']
  if valid_menu_options.include?(decision)
    case decision
    when "1"
      puts "The Empire thanks you for your aquiescence, citizen #{name}."
    when "2"
      puts "#{name}, aren't you a little short for a Storm Trooper?"
    when "3"
      puts "Hey, #{name}! Who's scruffy-lookin'?"
    else
      puts "#{name}, I loathe bounty hunters. We don't need their scum..."
    end
    decision_LCV = 0
  else
    puts "You must tell me how you feel about the law."
    puts "Please enter a selection from the menu above." 
  end
end