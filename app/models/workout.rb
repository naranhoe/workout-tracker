class Workout < ApplicationRecord
  belongs_to :user
  has_many :excercises, dependent: :destroy

  accepts_nested_attributes_for :excercises, allow_destroy: true
end
