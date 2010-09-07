class Blog < ActiveRecord::Base
  belongs_to :category
  has_many :comments
  belongs_to :user
  #has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    #:url => "/:attachment/:id/:style/:basename.:extenstion"
   validates_presence_of :blog_name, :blog_description
   validates_format_of :blog_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

cattr_reader :per_page
@@per_page = 2
end
