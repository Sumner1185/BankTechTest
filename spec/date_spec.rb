# frozen_string_literal: true

require 'date'

describe Date do
  it 'should get current date' do
    Time.stub(:now) { Time.new(2012, 0o7, 13) }
    expect(subject.date.day).to eq 13
  end
end
