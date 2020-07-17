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
      expect(list.all_transactions[0].date).to eq '13/07/2020'
      expect(list.all_transactions[0].credit).to eq '50.00'
      expect(list.all_transactions[0].debit).to eq ''
      expect(list.all_transactions[0].balance).to eq '100.00'
    end
  end
end
