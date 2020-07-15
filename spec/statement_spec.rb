# frozen_string_literal: true

require 'statement'

describe Statement do

  it 'should return a header string for the statement' do
    expect(subject.header).to eq 'date || credit || debit || balance'
  end

  it 'should print each element from transactions array' do
    transactions = 
    [@date="13/07/2020", @credit="50.00", @debit="", @balance="100.00"],
    [@date="14/07/2020", @credit="", @debit="50.00", @balance="50.00"]
    expect do
      subject.print(transactions)
    end.to output("date || credit || debit || balance\n14/07/2020 ||  || 50.00 || 50.00\n13/07/2020 || 50.00 ||  || 100.00\n").to_stdout
  end
end
