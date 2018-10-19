class MicroPost < ApplicationRecord
  belongs_to :location
  has_many :comments, as: :commentable, dependent: :destroy
end
