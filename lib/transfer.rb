class Transfer

attr_accessor :balance, :status, :bank_account

  def initialize(sender, receiver, amount, status="pending")
    @receiver = receiver
    @sender = sender
    @amount = amount
    @status = status
  end 

  def receiver
    @receiver
  end 

  def sender
    @sender
  end 

  def amount
    @amount
  end 

  def status
    @status
  end 
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end 

  def execute_transaction
    self.status = "complete"
  end 
end 

