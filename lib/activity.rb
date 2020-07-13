# frozen_string_literal: true

# class to keep track of all activity on account
class Activity
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_deposit(date, amount)
    @transactions.push([date, amount, ''])
  end

  def add_withdrawal(date, amount)
    @transactions.push([date, '', amount])
  end
end
