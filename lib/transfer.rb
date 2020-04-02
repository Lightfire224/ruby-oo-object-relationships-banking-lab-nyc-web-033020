class Transfer
    attr_reader :sender, :receiver, :balance, :status

  def initialize(sender, receiver, balance)
    @sender = sender
    @receiver = receiver
    @balance = balance
    @status = "pending"
    
  end

end
