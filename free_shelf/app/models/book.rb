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
#  image       :string
#  user_id     :integer
#

class Book < ApplicationRecord
  belongs_to :author
  has_many :users, through: :checkouts
  belongs_to :user

  # mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates_uniqueness_of :title, scope: :author
  validates :author_id, presence: true
  validates :language, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates_uniqueness_of :url
  validates :user_id, presence: true

end
