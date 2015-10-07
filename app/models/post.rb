class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :author
  mount_uploader :cover, CoverUploader
end
