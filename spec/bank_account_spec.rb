require 'bank_account'

describe BankAccount do
  
  it 'should initialise with a balance of 0' do
    account = BankAccount.new
    expect(account.balance).to eq 0
  end

end