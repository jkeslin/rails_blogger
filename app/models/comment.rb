class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :article

	validates :content, :presence => true,
              :length => { in: 4..140 }
end
