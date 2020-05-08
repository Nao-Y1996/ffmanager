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


  30.times do |i|
  	student_num = i+1000
    User.create!(name: "てすとゆーざー#{i + 1}", name_kana: "テストユーザー#{i + 1}", term: 1, student_number: student_num,
    			is_admin: false, is_genre_leader: false, email: student_num.to_s+"@example.com", password: "password", password_confirmation: "password")
  end

  2.times do |i|
  	student_num = i+2000
    User.create!(name: "代表#{i + 1}", name_kana: "ダイヒョウ#{i + 1}", term: 1, student_number: student_num,
    			is_admin: true, is_genre_leader: false, email: student_num.to_s+"@example.com", password: "password", password_confirmation: "password")
  end

  9.times do |i|
  	student_num = i+3000
    User.create!(name: "部門長#{i + 1}", name_kana: "ブモンチョウ#{i + 1}", term: 1, student_number: student_num,
    			is_admin: false, is_genre_leader: true, email: student_num.to_s+"@example.com", password: "password", password_confirmation: "password")
  end