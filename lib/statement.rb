# frozen_string_literal: true

# class to format statement output
class Statement
  def initialize
    @activity_class = Activity
  end

  def header
    'date || credit || debit || balance'
  end

  def print(transactions)
    puts header
    transactions.reverse.each do |item|
      puts "#{item.date} || #{item.credit} || #{item.debit} || #{item.balance}"
    end
  end
end
