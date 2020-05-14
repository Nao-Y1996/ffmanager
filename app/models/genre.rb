class Genre < ApplicationRecord
	has_many :user_genre_infos
	has_many :users, through: :user_genre_infos, #genre.usersが使えるようになる？
					 dependent: :destroy
end
