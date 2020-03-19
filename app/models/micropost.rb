class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  def favorited_by? user
     favorites.where(user_id: user.id).exists?
  end
end
