class UserGenreInfo < ApplicationRecord
	belongs_to :user
	belongs_to :genre
	validates :user_id, uniqueness: { scope: :priority }#各ユーザーに、1ジャン一つ、2ジャン一つ（3,4,...）
    validates :genre_id, uniqueness: { scope: :user_id }#各ジャンルに同一人物はいない
    validates :user_id, uniqueness: { scope: [:genre_id, :is_valid] }#各ユーザーは、すでに登録済、申請済のジャンルには登録、申請できない
    validates :genre_id, uniqueness: { scope: [:user_id, :priority] }#1ジャンと2ジャンは同じにできない

    #各ジャンルで部門長は一人だけにしたいが、genre_id, priority, is_genre_leaderの組み合わせがユニークとすると
    #そのジャンルの中で他ジャンルの部門長が２ジャンとして入れなくなる（値を指定してバリデーションすればいいが方法が不明）
    #とりあえず、アクション内でgenre_id, priority==1, is_genre_leader==trueの組み合わせをユニークにする
end
