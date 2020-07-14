# frozen_string_literal: true

require 'transaction'

describe Transaction do
  
  it 'should store a date of the transaction' do
    transaction = Transaction.new('07/13/2012')
    expect(transaction.date).to eq '07/13/2012'
  end

  it 'should store an amount of credit' do
    transaction = Transaction.new('date', '50.00')
    expect(transaction.credit).to eq '50.00'
  end
  
end