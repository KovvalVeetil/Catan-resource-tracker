class Player < ApplicationRecord
    has_many :resources, dependent: :destroy
  end
  