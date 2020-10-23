class Genre < ApplicationRecord
	has_many :user_genre_infos
	has_many :users, through: :user_genre_infos, #genre.usersが使えるようになる？
					 dependent: :destroy

	def leader_name
		leader_info = self.user_genre_infos.find_by(is_genre_leader: true)
		if leader_info
			return leader_info.user.name
		else
			return '未登録'
		end
	end
end
