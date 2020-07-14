# frozen_string_literal: true

require 'activity'

describe Activity do
  subject(:list) { Activity.new }

  it 'should instantiate with an empty transactions array' do
    expect(list.transactions.length).to eq 0
  end

  describe '#add_deposit' do
    before(:each) do
      list.add_deposit('13/07/2020', 50, 100)
    end

    it 'should add to transactions when a deposit is made' do
      expect(list.transactions.length).to eq 1
    end

    it 'should add date, amount and an empty string' do
      expect(list.transactions[0]).to eq ['13/07/2020', '50.00', '', '100.00']
    end
  end

  describe '#add_withdrawal' do
    before(:each) do
      list.add_withdrawal('13/07/2020', 50, 100)
    end

    it 'should add to transactions when a withdrawal is made' do
      expect(list.transactions.length).to eq 1
    end

    it 'should add date, empty string and amount' do
      expect(list.transactions[0]).to eq ['13/07/2020', '', '50.00', '100.00']
    end
  end
end
