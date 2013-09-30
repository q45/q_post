class User < ActiveRecord::Base
	
	has_many :posts
	has_many :comments

	has_secure_password validations: false

	validates :username, presence: true, uniqueness: true
	validates :password, presence: true

<<<<<<< HEAD
=======
	def admin?
		role == 'admin'
	end
>>>>>>> ffaf6e4b79f08b6df42cba43d67517efef6e214c
end
