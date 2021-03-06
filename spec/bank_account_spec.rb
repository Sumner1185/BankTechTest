# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  subject(:account) { BankAccount.new }
  
  it 'should initialise with a balance of 0' do
    expect(account.balance).to eq 0
  end

  it 'should credit balance when deposit is made' do
    account.deposit(50)
    expect(account.balance).to eq 50
  end

  it 'should decrease amount from balance when withdrawal made' do
    account.deposit(50)
    account.withdraw(25)
    expect(account.balance).to eq 25
  end
end
