# frozen_string_literal: true

require 'activity'

describe Activity do
  subject(:list) { Activity.new }

  it 'should instantiate with an empty transactions array' do
    expect(list.transactions.length).to eq 0
  end

  it 'should add to transactions when a deposit is made' do
    list.add_deposit(50)
    expect(list.transactions.length).to eq 1
  end

  it 'should add to transactions when a withdrawal is made' do
    list.add_withdrawal(50)
    expect(list.transactions.length).to eq 1
  end
end
