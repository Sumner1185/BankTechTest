# frozen_string_literal: true

require 'activity'

describe Activity do
  subject(:list) { Activity.new }

  it 'should instantiate with an empty transactions array' do
    expect(list.all_transactions.length).to eq 0
  end

  describe '#add_transaction' do

    it 'should add to transactions when a deposit is made' do
      list.add_transaction('13/07/2020', '50.00', '', '100.00')
      expect(list.all_transactions.length).to eq 1
    end

  end
end
