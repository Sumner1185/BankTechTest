# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:transactions) { [
    ['13/07/2020', '50', '', '100'],
    ['14/07/2020', '', '50', '50']
  ] }
  
  it 'should return a header string for the statement' do
    expect(subject.header).to eq 'date || credit || debit || balance'
  end

  it 'should print each element from transactions array' do
    expect do
      subject.print(transactions)
    end.to output("date || credit || debit || balance\n13/07/2020 || 50 ||  || 100\n14/07/2020 ||  || 50 || 50\n").to_stdout
  end
end
