# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord

    has_many :books, through: :checkouts
    has_many :books

    validates :user_name, presence: true
    validates_uniqueness_of :user_name
    

end
