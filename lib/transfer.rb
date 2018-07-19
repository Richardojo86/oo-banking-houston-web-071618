class Transfer

  attr_accessor :status
  attr_reader :sender, :receiver

  def initialize(sender,
    receiver,
    amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    # if BankAccount.@sender.status
  end

  def reverse_transfer
  end
end
