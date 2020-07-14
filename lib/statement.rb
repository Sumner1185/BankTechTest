# frozen_string_literal: true

class Statement
  def header
    'date || credit || debit || balance'
  end

  def print(transactions)
    puts header
    transactions.each do |item|
      puts item.join(' || ')
    end
  end
end
