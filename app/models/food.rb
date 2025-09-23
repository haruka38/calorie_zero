class Food < ApplicationRecord
  has_many :excuses, dependent: :destroy
end
