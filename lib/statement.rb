# frozen_string_literal: true

class Statement
  def header
    'date || credit || debit || balance'
  end

  def print(transactions)
    arr = transactions.each_with_index do |value, index|
      value[index].join(' || ')
      index += 1
    end
    arr.join('\n')
  end
end
