# frozen_string_literal: true

require 'transaction'

describe Transaction do
  describe 'non-empty values passed' do
    before(:each) do
      @transaction = described_class.new('07/13/2012', '100.00', '50.00', '500.00')
    end

    it 'should store a date of the transaction' do
      expect(@transaction.date).to eq '07/13/2012'
    end

    it 'should store an amount of credit' do
      expect(@transaction.credit).to eq '100.00'
    end

    it 'should store an amount of debit' do
      expect(@transaction.debit).to eq '50.00'
    end

    it 'should store a balance' do
      expect(@transaction.balance).to eq '500.00'
    end
  end

  describe 'empty values passed' do
    it 'should take an empty string if no credit given' do
      transaction = Transaction.new('date', '', '50.00', '500.00')
      expect(transaction.credit).to eq ''
    end

    it 'should take an empty string if no debit given' do
      transaction = Transaction.new('date', '50.00', '', '500.00')
      expect(transaction.debit).to eq ''
    end
  end
end
