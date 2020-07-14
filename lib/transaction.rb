# frozen_string_literal: true

# class in charge of handling each transaction
class Transaction
  attr_reader :date, :credit, :withdraw

  def initialize(date, credit, withdraw)
    @date = date
    @credit = credit
    @withdraw = withdraw
  end
end
