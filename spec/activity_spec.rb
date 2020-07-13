# frozen_string_literal: true

require 'activity'

describe Activity do
  
  it 'should instantiate with an empty transactions array' do
    list = Activity.new
    expect(list.transactions.length).to eq 0
  end

end
