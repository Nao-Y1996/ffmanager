class Genre < ApplicationRecord
	has_many :users, through: :genre_users, #genre.usersが使えるようになる？
					 dependent: :destroy
    has_many :genre_users #おまじない
end
