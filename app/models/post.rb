class Post < ActiveRecord::Base
   validates :title_db, presence: true
   validates :content_db, presence: true
end

