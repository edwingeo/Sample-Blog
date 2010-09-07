class Comment < ActiveRecord::Base
  validates_presence_of :comments_description,:posted_by, :email
  belongs_to :blog
end
