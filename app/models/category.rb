class Category < ActiveRecord::Base
  has_many :blogs
  validates_presence_of :category_name
end
