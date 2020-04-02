class BankAccount
<<<<<<< HEAD
    attr_reader :name
    attr_accessor :balance, :status
    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(balance)
        @balance  += self.balance
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        if @status == "open" && @balance > 0
            true
        else
            false
        end
    end

    def close_account
        if @status == "open"
            @status = "closed"
        end
    end


=======
  attr_reader :name, :balance
  
  def initialize(name, balance)
    @name = name
    @balance = 1000
  end
>>>>>>> b5ce101901d6ae5caa25e4eb4c44d16f6bb2408f

end
