# frozen_string_literal: true
# require_relative './date.rb'

# bank account allowing deposits and withdrawals as well as printing statement
class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
    # @date = Date.new
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
