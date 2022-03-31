class Item < ApplicationRecord
  serialize :status_update_history, Array
  validates :serial_number, uniqueness: true




def self.search(search)
  if search
    where("serial_number = ?", "#{search}")
    # find(:all)
  end
end


end
