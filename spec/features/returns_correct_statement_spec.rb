# frozen_string_literal: true

require 'bank_account'

describe 'full user feature' do

  it 'should return correct printed statement' do
    account = BankAccount.new
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
  
    expect do
      account.print_statement
    end.to output("date || credit || debit || balance
      15/07/2020 ||  || 500.00 || 1500.00
      15/07/2020 || 2000.00 ||  || 2000.00
      15/07/2020 || 1000.00 ||  || 1000.00").to_stdout
  end
end
