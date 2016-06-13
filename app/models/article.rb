class Article < ActiveRecord::Base
  belongs_to :user

  validates :title, 
            presence: true, 
            length: {minimum: 3, maximum: 50}
  validates :description, 
            presence: true, 
            length: {minimum: 3, maximum: 500}

  validates :user_id,
            presence: true #requires that every time an article is created, a user_id is associated

end