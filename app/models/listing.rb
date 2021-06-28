class Listing < ApplicationRecord
  belongs_to :breed
  # enum associate a number to a particular value
  enum sex: {female: 0 , male: 1}
end
