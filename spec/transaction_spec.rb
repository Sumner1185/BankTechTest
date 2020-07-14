# frozen_string_literal: true

require 'transaction'

describe Transaction do
  before(:each) do
    @transaction = described_class.new('07/13/2012', '100.00', '50.00')
  end
  
  it 'should store a date of the transaction' do
    expect(@transaction.date).to eq '07/13/2012'
  end

  it 'should store an amount of credit' do
    expect(@transaction.credit).to eq '100.00'
  end

  # it 'should have a default value of '' if no credit given' do
  #   transaction = Transaction.new('date', '', '50.00')
  #   expect(transaction.credit).to eq ''
  # end

  it 'should store an amount of withdraw' do
    expect(@transaction.withdraw).to eq '50.00'
  end
  
end