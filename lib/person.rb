require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(number)
        if number < 0 
            @happiness = 0
        elsif number > 10
            @happiness = 10
        else
            @happiness = number
        end
    end

    def hygiene=(number)
        if number < 0 
            @hygiene = 0
        elsif number > 10
            @hygiene = 10
        else
            @hygiene = number
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(number)
        @bank_account = @bank_account + number
        "all about the benjamins"
    end

    def take_bath
        new_num = @hygiene + 4
        self.hygiene=(new_num)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        new_clean = @hygiene - 3
        self.hygiene=(new_clean)
        new_happy = @happiness + 2
        self.happiness=(new_happy)
        "♪ another one bites the dust ♫"
    end

end
