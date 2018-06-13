require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    checkouts: Field::HasMany,
    books_to_read: Field::HasMany.with_options(class_name: "Book"),
    books_created: Field::HasMany.with_options(class_name: "Book"),
    id: Field::Number,
    username: Field::String,
    created_at: Field::DateTime.with_options(format: '%B %e, %Y'),
    updated_at: Field::DateTime.with_options(format: '%B %e, %Y'),
    password_digest: Field::String,
    email: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :username,
    :books_to_read,
    :books_created,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :username,
    :email,
    :checkouts,
    :books_created,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :username,
    :email,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(user)
    user.username
  end
end
