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
    output_string = "date || credit || debit || balance\n17/07/2012 ||  || 500.00 || 2500.00\n16/07/2012 || 2000.00 ||  || 3000.00\n15/07/2012 || 1000.00 ||  || 1000.00\n"
    
    expect do
      account.print_statement
    end.to output(output_string).to_stdout
  end
end
