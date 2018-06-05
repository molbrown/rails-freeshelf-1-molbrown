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

    belongs_to :book
    belongs_to :user

end
