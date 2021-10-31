require 'pry'
class Person

    def initialize(name)
        @name = name
        self.bank_account = 25
        self.happiness = 8
        self.hygiene = 8
    end
    def name
        @name
    end
    
    def bank_account
        @bank_account
    end
    def bank_account=(bank_account)
        @bank_account = bank_account
    end
    def happiness
        @happiness
    end
    def happiness=(happiness)
        if happiness > 10 
            @happiness = 10
        elsif happiness < 0
            @happiness = 0 
        else
            @happiness = happiness
        end
    end
    def hygiene
        @hygiene
    end
    def hygiene=(hygiene)
        if hygiene > 10 
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0 
        else
            @hygiene = hygiene
        end
    end
    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end
    def happy?
        if happiness > 7
            true
        else
            false
        end
    end
    def get_paid(amount)
        @bank_account = bank_account + amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness = happiness + 2
        self.hygiene = hygiene - 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness = happiness + 3
        # binding.pry
        friend.happiness = friend.happiness + 3
        if friend.name == "Penelope"
            "Hi Penelope! It's Felix. How are you?"
        elsif friend.name == "Felix"
            "Hi Felix! It's Penelope. How are you?"
        end
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end