class Post < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  validates :body, presence: true
end
