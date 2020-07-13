require 'date'

describe Date do

  it 'should get current date' do
    Time.stub(:now) { Time.new(2012, 07, 13) }
    expect(subject.get_date.day).to eq 13
  end

end