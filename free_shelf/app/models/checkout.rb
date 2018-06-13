# == Schema Information
#
# Table name: checkouts
#
#  id         :bigint(8)        not null, primary key
#  book_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Checkout < ApplicationRecord

    belongs_to :books_to_read, foreign_key: :book_id, class_name: 'Book' 
    belongs_to :reader, foreign_key: :user_id, class_name: 'User'

end
