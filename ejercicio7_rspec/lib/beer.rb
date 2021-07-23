require 'faker'

class Beer
    
    attr_accessor :nivel

    def initialize
        self.nivel = Faker::Name.name
    end
end