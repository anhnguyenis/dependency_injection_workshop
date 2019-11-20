class Greeter
  def greet
    smiley = Smiley.new       #calls a new class of Smiley. So we use a double.
    "Hello #{smiley.get}"
  end
end

class Smiley
  def get
    ":)"
  end
end
