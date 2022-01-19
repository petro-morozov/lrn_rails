class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,
           :class_name => 'Post',
           :foreign_key => 'post_id'
      #   def username_required?
      #     false
      #   end
end
