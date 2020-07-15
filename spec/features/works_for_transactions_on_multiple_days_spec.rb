# frozen_string_literal: true

require 'bank_account'

describe 'transactions on multiple days' do
  
  it 'should add the correct date for all transactions' do
    account = BankAccount.new
    Time.stub(:now) { Time.new(2012, 0o7, 15) }
    account.deposit(1000)
    Time.stub(:now) { Time.new(2012, 0o7, 16) }
    account.deposit(2000)
    Time.stub(:now) { Time.new(2012, 0o7, 17) }
    account.withdraw(500)
    
    expect do
      account.print_statement
    end.to output("date || credit || debit || balance
      17/07/2020 ||  || 500.00 || 1500.00
      16/07/2020 || 2000.00 ||  || 2000.00
      15/07/2020 || 1000.00 ||  || 1000.00").to_stdout
  end
end
