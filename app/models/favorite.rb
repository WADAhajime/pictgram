class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  def show
    @favorite_count = Favorite.all.count
  end
end
