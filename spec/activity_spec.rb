# frozen_string_literal: true

require 'activity'

describe Activity do
  it 'should instantiate with an empty transactions array' do
    list = Activity.new
    expect(list.transactions.length).to eq 0
  end

  it 'should add to transactions when a deposit is made' do
    list = Activity.new
    list.add_deposit(50)
    expect(list.transactions.length).to eq 1
  end
end
