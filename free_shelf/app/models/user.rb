# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
    has_many :checkouts
    has_many :books_to_read, through: :checkouts, class_name: 'Book' 
    has_many :books_created, class_name: 'Book'

    validates :username, presence: true
    validates_uniqueness_of :username
    validates :email, presence: true

    has_secure_password
  
    def to_s
        username
    end
    

end
