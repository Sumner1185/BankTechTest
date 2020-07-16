# frozen_string_literal: true

require_relative './transaction'

# class to keep track of all activity on account
class Activity
  attr_reader :all_transactions

  def initialize(transaction_class = Transaction)
    @all_transactions = []
    @transaction_class = Transaction
  end

  def add_transaction(date, credit, debit, balance)
    formatted_balance = balance_two_decimals(balance)
    new_transaction = @transaction_class.new(date, credit, debit, formatted_balance)
    @all_transactions.push(new_transaction)
  end

  private

  def balance_two_decimals(balance)
    format('%.2f', balance)
  end
end
