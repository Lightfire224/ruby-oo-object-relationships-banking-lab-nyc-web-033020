class BankAccount
    attr_reader :name
    attr_accessor :balance, :status, :withdraw
    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        @balance  += amount
    end

    def withdraw(amount)
        @balance -= amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        @status == "open" && @balance > 0
    end

    def close_account
        if @status == "open"
            @status = "closed"
        end
    end



end
