# frozen_string_literal: true

require 'statement'

describe Statement do

  it 'should return a header string for the statement' do
    expect(subject.header).to eq 'date || credit || debit || balance'
  end

  it 'should print each element from transactions array' do
    transactions = []
    transaction_1 = instance_double('Transaction')
    transaction_2 = instance_double('Transaction')
    allow(transaction_1).to receive_messages(date: "13/07/2020", credit: '50.00', debit: "", balance: "100.00")
    allow(transaction_2).to receive_messages(date: "14/07/2020", credit: "", debit: '50.00', balance: "50.00")
    transactions.push(transaction_1, transaction_2)

    expect do
      subject.print(transactions)
    end.to output("date || credit || debit || balance\n14/07/2020 ||  || 50.00 || 50.00\n13/07/2020 || 50.00 ||  || 100.00\n").to_stdout
  end
end
