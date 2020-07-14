# frozen_string_literal: true

# class to keep track of all activity on account
class Activity
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_deposit(date, amount, balance)
    formatted_amount = amount_two_decimals(amount)
    formatted_balance = balance_two_decimals(balance)
    @transactions.push([date, formatted_amount, '', formatted_balance])
  end

  def add_withdrawal(date, amount, balance)
    formatted_amount = amount_two_decimals(amount)
    formatted_balance = balance_two_decimals(balance)
    @transactions.push([date, '', formatted_amount, formatted_balance])
  end

  private

  def amount_two_decimals(amount)
    sprintf('%.2f', amount)
  end

  def balance_two_decimals(balance)
    sprintf('%.2f', balance)
  end
end
