require 'bank_account'

describe BankAccount do
  
  it 'should initialise with a balance of 0' do
    account = BankAccount.new
    expect(account.balance).to eq 0
  end

  it 'should credit account when deposit is made' do
    account = BankAccount.new
    account.deposit(50)
    expect(account.balance).to eq 50
  end

end