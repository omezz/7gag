class Post < ActiveRecord::Base
  belongs_to :user
  has_attached_file :meme
  validates_attachment_content_type :meme, :content_type => /\Aimage\/.*\Z/

  acts_as_commentable
  acts_as_voteable

end
