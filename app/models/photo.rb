class Photo < ApplicationRecord
  # Associations

 has_many :comments, dependent: :destroy

 has_many :likes, dependent: :destroy

 has_many :users, through: :comment_photo, source: :comments

  # Validations

end
