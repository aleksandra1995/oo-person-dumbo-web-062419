# your code goes here
require 'pry'
class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness_value)
        @happiness = happiness_value
        if @happiness >= 10
            @happiness = 10
        elsif @happiness <=0
            @happiness = 0
        else 
            @happiness
        end
       
        
    end
    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end 

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
end

    def take_bath
        self.hygiene=(@hygiene + 4 )
         '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene=(@hygiene - 3 )
        self.happiness=(@happiness += 2)
        "♪ another one bites the dust ♫"
    
    end 

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
      if topic == "politics"
        self.happiness=(@happiness - 2)
        person.happiness=( person.happiness - 2)
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness=(@happiness + 1)
        person.happiness=(person.happiness + 1)
        "blah blah sun blah rain"
      else 
        "blah blah blah blah blah"
      end
        end
end

