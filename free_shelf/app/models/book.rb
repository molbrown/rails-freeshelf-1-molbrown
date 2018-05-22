# == Schema Information
#
# Table name: books
#
#  id          :bigint(8)        not null, primary key
#  author_id   :bigint(8)
#  title       :string
#  description :string
#  url         :string
#  language    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Book < ApplicationRecord
  belongs_to :author

  validates :title, presence: true
  validates :author, presence: true
  validates :language, presence: true
  validates :description, presence: true
  validates :url, presence: true

end
