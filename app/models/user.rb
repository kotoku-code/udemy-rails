class User < ApplicationRecord
    before_save { self.email = email.downcase }
    has_many :articles
    validates :username, presence: true, 	  
                        uniqueness: { case_sensitive: false }, 	                     
                        length: { minimum: 3, maximum: 25 }	                     

end