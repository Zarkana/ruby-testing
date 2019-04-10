
puts 3.class

puts "Hello".class

puts "Hello".method(:class).class

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

puts array = [1,2,3,4,5]
doubled = array.map do |element|
  element * 2
end

puts doubled

grade = 'B'

case grade
when 'A'
  puts 'test'
when 'B'
  puts'Best'
else
  puts ''
end

#Exception handling
begin
  #Code here that might raise an exception
  raise NoMemoryError, 'You ran out of memory.'
rescue NoMemoryError => exception
  puts "#{exception}"
end

# Methods

def double_number(x)
  x * 2
end

# Methods (and blocks) implicitly return the value of the last statement.
puts double_number 2 #=> 4


def one_yield
  yield
end

def multiple_yields
  yield
  yield
end

one_yield { puts "one yield" }

multiple_yields { puts "multiple yields" }

def guests(&block)
  puts "ceremoniously common"
  block.call(4, 5)
  puts "curtain call"
end

guests {|n,a| puts "first method #{n}"}
guests {|n,a| puts "second method #{n}, factors in #{a}"}


a,b,c = [1, 2, 3]
puts a
puts b
puts c

class Human

  #a class variable shared by all instances of this class. Effectively static equivalent
  @@species = 'H. sapiens'

  #Basic initializer
  def initialize(name, age = 0)
    #Assign the argument to the 'name' instance variable for the instance
    @name = name
    #If no age given, fall back to default
    @age = age
  end

  #Basic setter method
  def name=(name)
    @name=name
  end

  #Basic getter method
  def name
    @name
  end

  attr_accessor :name2

  #class method, like a static method
  def self.say(msg)
      puts msg
  end

  def species
    @@species
  end
end


jim = Human.new('Jim Halpert')
dwight = Human.new('Dwight K. Shrute')

puts jim.species
puts jim.name

jim.name= "Jim Halpert II"

puts jim.name

Human.say('Hi')


class Alien

  attr_accessor :height, :title
  @@species = "Clorgzan"

  def initialize(title, height = 12.0)
    @title = title
    @height = height
  end

  # def title=(title)
  #   @title = title
  # end

  # def title
  #   @title
  # end

  
end


borganzo = Alien.new("BORGANZO")

puts borganzo.title
puts borganzo.height

#global scope
$var = "I'm a global var"

#instance var
@var = "I'm an instance var"

#class/static var
# @@vars = "class var"

#variables that start with a capital letter are constants

Var ="I'm a constant"

#Class is also an object in ruby. So a class can have instance variables/
#A class variable is shared among the class and all of its descendents

#Base class
class Human
  @@foo=0

  def self.foo
    @@foo
  end

  def self.foo=(value)
    @@foo=value
  end
end

#Derived class
class Worker < Human
end

Human.foo = 2
puts Human.foo

# a class instance variable is not shared by the class's descendants
class Humanz
  @bar = 0

  def self.bar
    @bar
  end

  def self.bar=(value)
    @bar = value
  end
end

class Doctor < Humanz
end

Humanz.bar #=> 0
Doctor.bar #=> nil

module ModuleExample
  def foo
    puts 'foo'
  end
end

class Person
  #Including modules binds their methods to the class instances
  include ModuleExample
end
class Book
  #Extending modules binds their methods to the class itself
  extend ModuleExample
end

# Person.foo
Person.new.foo
Book.foo
# Book.new.foo

#Callbacks are executed when including and extending a module
module ConcernExample
  def self.included(base)
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
  end

  module ClassMethods
    def bar
      puts 'bar'
    end
  end

  module InstanceMethods
    def qux
      puts 'qux'
    end
  end
end

class Something
  include ConcernExample
end


Something.bar     #=> "bar"
# Something.qux     #=> NoMethodError: undefined method `qux'
# Something.new.bar #=> NoMethodError: undefined method `bar'
Something.new.qux #=> "qux"

