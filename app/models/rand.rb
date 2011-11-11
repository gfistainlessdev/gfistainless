module ActiveRecord
  class Base
    puts "Hi there!"
    def self.random
      if (c = count) != 0
        find(:first, :offset =>rand(c))
      end
    end
  end
end