# frozen_string_literal: true

# date class to retrieve current date formatted as required
class Date
  attr_reader :date

  def initialize
    @date = format_date
  end

  def format_date
    Time.now.strftime("%d/%m/%Y")
  end
end
