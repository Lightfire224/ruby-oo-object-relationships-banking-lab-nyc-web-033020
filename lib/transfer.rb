class Transfer
    attr_reader :sender, :receiver, :balance, :status, :amount

  # BankAccount sender, BankAccount receiver, Integer amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    rejection_message = "Transaction rejected. Please check your account balance."
    
    if receiver.status == "closed"
      @status = "rejected"
      return rejection_message
    elsif sender.balance < amount
      @status = "rejected"
      return rejection_message
    end

    if @status == "pending"
      receiver.deposit(amount)
      sender.withdraw(amount)
      #Could have deposited a negative amount instead of making withdraw method
      @status = "complete"
    end
  end
  
  def reverse_transfer
    #withdraw amount from receivers balance
    #deposit amount from senders balance 
    #@status = "reversed"
    if @status == "complete"
      receiver.withdraw(amount)
      sender.deposit(amount)
      @status = "reversed"
    end
  end

end
