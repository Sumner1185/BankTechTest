# frozen_string_literal: true

require_relative './date.rb'
require_relative './statement.rb'
require_relative './activity.rb'

# bank account allowing deposits and withdrawals as well as printing statement
class BankAccount
  attr_reader :balance

  def initialize(activity_class = Activity, statement_class = Statement)
    @balance = 0
    @activity = activity_class.new
    @statement = statement_class.new
  end

  def deposit(amount)
    @balance += amount
    credit = amount_two_decimals(amount)
    @activity.add_transaction(current_date, credit, '', @balance)
  end

  def withdraw(amount)
    @balance -= amount
    debit = amount_two_decimals(amount)
    @activity.add_transaction(current_date, '', debit, @balance)
  end

  def print_statement
    @statement.print(@activity.all_transactions)
  end

  private

  def current_date
    Time.now.strftime('%d/%m/%Y')
  end

  def amount_two_decimals(amount)
    format('%.2f', amount)
  end
end
