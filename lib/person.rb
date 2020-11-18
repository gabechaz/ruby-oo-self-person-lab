class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end
    def hygiene=(num)
        @hygiene = num.clamp(0,10)
    end
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
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
def get_paid(cash_money)
    @bank_account += cash_money
    "all about the benjamins"
end
def take_bath
    bathed = @hygiene += 4
    self.hygiene=(bathed)
    "♪ Rub-a-dub just relaxing in the tub ♫"
end
def work_out
    tired = @happiness + 2
    dirty = @hygiene - 3
    self.happiness=(tired)
    self.hygiene=(dirty)
    "♪ another one bites the dust ♫"
end
def call_friend(friend)
   happier_self = @happiness + 3
    happier_friend = friend.happiness + 3
    self.happiness=(happier_self)
    friend.happiness=(happier_friend)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end
def start_conversation(friend, topic)
if topic == 'politics'
    sadder_friend = friend.happiness - 2
    sadder_self = self.happiness - 2
    self.happiness=(sadder_self)
    friend.happiness=(sadder_friend)
    "blah blah partisan blah lobbyist"
elsif topic == 'weather'
    sadder_friend = friend.happiness + 1
    sadder_self = self.happiness + 1
    self.happiness=(sadder_self)
    friend.happiness=(sadder_friend)
    "blah blah sun blah rain"
else
    "blah blah blah blah blah"
end
end

end