class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :top, optional: true
end



