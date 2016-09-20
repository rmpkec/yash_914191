class User < ApplicationRecord
  # Associations

 has_many :comments, dependent: :destroy

 has_many :likes, dependent: :destroy

 has_many :photos, through: :comments, source: :comment_photo

  # Validations

  validates :age, presence: true, message: 'age must be present'

  validates :name, presence: true, message: 'name must be present'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
