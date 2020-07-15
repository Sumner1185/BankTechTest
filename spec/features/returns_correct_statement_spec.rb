# frozen_string_literal: true

require 'bank_account'

describe 'full user feature' do

  it 'should return correct printed statement' do
    account = BankAccount.new
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    output_string = "date || credit || debit || balance\n15/07/2020 ||  || 500.00 || 2500.00\n15/07/2020 || 2000.00 ||  || 3000.00\n15/07/2020 || 1000.00 ||  || 1000.00\n"
  
    expect do
      account.print_statement
    end.to output(output_string).to_stdout
  end
end
