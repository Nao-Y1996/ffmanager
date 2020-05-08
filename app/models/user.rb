class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :student_number, presence: true

  has_many :genres, through: :genre_users,#user.genresが使えるようになる？
  					dependent: :destroy
  has_many :genre_users #おまじない
end
