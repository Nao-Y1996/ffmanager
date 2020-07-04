# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create(:name => "Lock")
Genre.create(:name => "Hiphop")
Genre.create(:name => "Punking")
Genre.create(:name => "Break")
Genre.create(:name => "Juzz")
Genre.create(:name => "Poping")
Genre.create(:name => "Krump")
Genre.create(:name => "House")
Genre.create(:name => "Girls")


#117.times do |i|
#	student_num = i+1000
#  User.create!(name: "てすとゆーざー#{i}", name_kana: "テストユーザー#{i}", term: 1, student_number: student_num, is_active: true,
#  			is_admin: false, email: student_num.to_s+"@example.com", password: "password", password_confirmation: "password")
#end
def rand_except_num(num)
  while true
    ans = rand(1..9)
    if ans!=num
      return ans
    end
  end
end

num = 15#一つのジャンルの1ジャンの人数
start = 1
finish = start + (num-1)

for j in 1..9 do
  for i in start..finish do
    student_num = i+1000
    User.create!(name: "てすとゆーざー#{i}", name_kana: "テストユーザー#{i}", term: 1, student_number: student_num, is_active: true,
                 is_admin: false, email: student_num.to_s+"@example.com", password: "password", password_confirmation: "password")
    UserGenreInfo.create!(genre_id: j, user_id: i, priority: 1, is_valid: true, is_genre_leader: false)
    UserGenreInfo.create!(genre_id: rand_except_num(j), user_id: i, priority: 2, is_valid: true, is_genre_leader: false)
  end
  start = finish + 1
  finish = start + 14
end




3.times do |i|
	student_num = i+2000
  User.create!(name: "代表#{i}", name_kana: "ダイヒョウ#{i}", term: 1, student_number: student_num, is_active: true,
  			is_admin: true, email: student_num.to_s+"@example.com", password: "password", password_confirmation: "password")
end