class Flat < ApplicationRecord
  geocoded_by :address # Say which line to use for geocoding
  after_validation :geocode, if: :will_save_change_to_address? # After validations, geocode and check if address has been update
end
