# frozen_string_literal: true

require 'date'

describe Date do

  before(:each) do
    Time.stub(:now) { Time.new(2012, 0o7, 13) }
  end

  it 'should return the date formatted like 13/07/2020' do
    expect(subject.date).to eq '13/07/2012'
  end
end
