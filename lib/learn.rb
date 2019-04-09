class Learn
  puts 3.class

  puts "Hello".class

  puts "Hello".method(:class).class

  puts 2**3  
  
  puts 1.+(3)

  puts 10.*(5)

  puts nil.class

  puts true.class

  puts false.class

  puts Integer == 1.class

  !!nil

  !!false

  !!0

  !!""

  1 < 10
  1 > 10

  2 <= 2
  2 >= 2

  #Combined comparison operator returns 1 when the first argument is greater and -1 when second is greater, and 0 otherwise
  1 <=> 10

  #logical operators
  true && false #=> false
  true || false

  placeholder = 'use string interpolation'
  puts "I can #{placeholder} when using double quoted strings"

  puts 'hello ' + 'world'

  puts 'hello ' + 3.to_s

  puts "hello #{3}"

  puts 'hello ' * 3

  puts 'hello'<< ' world'

  snake_case = true

  # symbols are immutable, reusable constants representedinternally by an integer value.
  # They're often used intead of strings to efficiently convey specific, meaningful values
  puts :pending.class

  status = :pending

  puts status == :pending

  #Strings can be converted into symbols and vice versa
  puts status.to_s
  puts 'pending'.to_sym

  array = [1, 2, 45.6, true]

  puts array[0..2].push(6).reverse << 6
  
  puts array.include?(1)

  # Hashes are Ruby's primary dictionary with key/value pairs.
  # Hashes are denoted with curly braces

  hash = {'color' => 'green', 'number' => 5}
  puts hash.keys
  puts hash['color']

  puts hash.key?('color')

  if true
    puts 'if statement'
  elsif false
    puts 'else, if, optional'
  else
    puts 'else, also optional'
  end
    
  #Loops
  #In Ruby, traditional for loops aren't very common. 
  # Instead, these basic loops are implemented using enumerable, which hinges on each
  (1..5).each do |element|
    puts "iteration #{element}"
  end

  hash.each do |key, value|
    puts "iteration #{value}"
  end

  hash.each_with_index do |key, index|
    puts "iteration #{index}, key #{key[0]}, value #{key[1]}}"
  end

  

end
