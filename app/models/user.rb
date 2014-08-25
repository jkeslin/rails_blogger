class User < ActiveRecord::Base
	has_secure_password

	has_many :articles
	has_many :comments

	validates :password, presence: true, on: :create
	validates :username, 
			  :presence => true,
              :uniqueness => true,
              :length => { minimum: 4 }		  
	validates :email,
			  :presence => true,
              :uniqueness => true,
              :format => { :with => /.+@.+\..+/ }

end
