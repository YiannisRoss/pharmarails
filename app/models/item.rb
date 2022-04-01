class Item < ApplicationRecord
  serialize :status_update_history, Array
  validates :serial_number, uniqueness: true
  validates :unit, inclusion: { in: %w[Each Pellet Bundle Case] }

  def self.search(search)
    if search
      where('serial_number = ?', search.to_s)
     
    end
  end
end
