# frozen_string_literal: true

# bank account allowing deposits and withdrawals as well as printing statement
class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end
end
