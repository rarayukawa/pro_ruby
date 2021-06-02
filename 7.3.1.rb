class User
  def initialize
    puts 'Initialized.'
  end
end
User.new
#=> Initialized.

user = User.new
user.initialize
#=> NoMethodError.....

class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
User.new  #=> ArgumentReeoe....
USer.new('ALice', 20)   #=> name: Alice, age: 20
