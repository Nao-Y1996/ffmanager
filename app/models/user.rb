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


  def get_genre1_info
    return self.user_genre_infos.find_by(priority: 1)
  end

  def get_genre2_info
    return self.user_genre_infos.find_by(priority: 2)
  end

  def belongs_to_genre?(genre)
    genre1_info = get_genre1_info
    genre2_info = get_genre2_info
    if genre1_info != nil && genre1_info.genre_id == genre.id
        return true
    elsif genre2_info != nil && genre2_info.genre_id == genre.id
        return true
    else
      return false
    end
  end

  def genre1_name
    genre1_info = get_genre1_info
    if genre1_info!=nil && genre1_info.is_valid==true
      genre1_name = genre1_info.genre.name
    elsif genre1_info!=nil && genre1_info.is_valid==false
      genre1_name = genre1_info.genre.name+"申請中"
    elsif genre1_info==nil
      genre1_name = "未登録"
    end
  end

  def genre2_name
    genre2_info = get_genre2_info
    if genre2_info!=nil && genre2_info.is_valid==true
      genre2_name = genre2_info.genre.name
    elsif genre2_info!=nil && genre2_info.is_valid==false
      genre2_name = genre2_info.genre.name+"申請中"
    elsif genre2_info==nil
      genre2_name = "未登録"
    end
  end

  def is_genre_leader?
    if self.user_genre_infos.find_by(is_genre_leader: true) != nil
      user_is_genre_leader = true
    else
      user_is_genre_leader = false
    end
  end
end
