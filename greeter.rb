class Greeter
  def initialize(smiley = Smiley.new) #sets a default value, it will be this unless you pass in an argument - create a new instance of smiley to allow you to pass a parameter
     @smiley = smiley
   end

  def greet
    "Hello #{@smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end
