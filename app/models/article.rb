class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
=begin  
  belongs_to :user
  has_many :comments, dependent: :destroy
=end  
  default_scope { order(created_at: :desc) }	
end
