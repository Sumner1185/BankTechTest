# frozen_string_literal: true

# date class to retrieve current date formatted as required
class Date
  attr_reader :date

  def initialize
    @date = Time.now.strftime('%d/%m/%Y')
  end
end
