class Transfer

  attr_reader :sender, :receiver

  def initialize(sender,
    receiver,
    transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = "pending"
  end

  def valid?
    sender_valid = false
    receiver_valid = false

    BankAccount.all.each do |bank_account_instance|
      if bank_account_instance == @sender && bank_account_instance.valid?
        sender_valid = true
      elsif bank_account_instance == @receiver && bank_account_instance.valid?
        receiver_valid = true
      end
    end

      sender_valid && receiver_valid
  end

  def execute_transaction
    # if BankAccount.@sender.status
  end

  def reverse_transfer
  end
end
