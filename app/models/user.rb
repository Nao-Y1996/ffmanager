class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :student_number, presence: true

  has_many :user_genre_infos #おまじない
  has_many :genres, through: :user_genre_infos, #genre.usersが使えるようになる？
           dependent: :destroy
end
