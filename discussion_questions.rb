require 'pry'

class FunnyBots  
 
    attr_accessor :name, :quotes  
 
    @@bots = []
 
    def initialize(name, quotes)
      @name = name
      @quotes = quotes
      @@bots << self
    end
 
   def random_quote
      self.quotes.sample
    end
 
    def self.bots
      @@bots
    end
 binding.pry
end

archer = FunnyBots.new("Archer", ["Q: How did the programmer die in the shower? A:He read the shampoo bottle instructions: Lather. Rinse. Repeat. ", "A UI is like a joke. If you have to explain it, it's not good.", "Q: How many programmers does it take to change a light bulb? A: None – It’s a hardware problem"] )

class Bicycle
 
  attr_reader :tire
 
    def initialize(tire, gears, style)
      @tire = tire
      @gears = gears
      @style = style
    end
 
    def tire_size
      self.tire
    end
 
    def self.gears
      @@gears
    end
 
end
 
mongoose = Bicycle.new(4, 10, "BMX")