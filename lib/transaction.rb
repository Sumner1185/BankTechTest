# frozen_string_literal: true

# class in charge of handling each transaction
class Transaction
  attr_reader :date, :credit

  def initialize(date, credit = '')
    @date = date
    @credit = credit
  end
end
