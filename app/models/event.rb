class Event < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true
	validates :start_at, presence: true
	validates :end_at, presence: true

	has_many :event_participations
	has_many :users, through: :event_participations, #genre.usersが使えるようになる？
					 dependent: :destroy

end
