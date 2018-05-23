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

require 'test_helper'

class CheckoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
