require 'greeter'
describe Greeter do
  describe "#greet" do
    it "prints a message and a smiley" do
      smiley_double = double :smiley, get: ":D"
      #method name and return value
      greeter = Greeter.new(smiley_double)
      expect(greeter.greet).to eq "Hello :D"
    end
  end
end

# smiley_spec.rb
describe Smiley do
  describe "#get" do
    it "returns a smiley" do
      smiley = Smiley.new
      expect(smiley.get).to eq ":)"
    end
  end
end
