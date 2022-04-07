class Item < ApplicationRecord
  validates :serial_number, uniqueness: true
  validates :unit, inclusion: { in: %w[Each Pallet Bundle Case] }

  def self.search(search)
    where('serial_number = ?', search.to_s) if search
  end
end
