class Palindrom < ApplicationRecord
	validates :num, presence: true, uniqueness: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1e6 }

	before_create :find_pal

  def find_pal

  end


end
