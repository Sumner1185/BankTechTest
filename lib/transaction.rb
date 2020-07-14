# frozen_string_literal: true

# class in charge of handling each transaction
class Transaction
  attr_reader :date, :credit, :withdraw, :balance

  def initialize(date, credit, withdraw, balance)
    @date = date
    @credit = credit
    @withdraw = withdraw
    @balance = balance
  end
end
