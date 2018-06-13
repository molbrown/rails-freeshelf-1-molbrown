require "administrate/base_dashboard"

class CheckoutDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    books_to_read: Field::BelongsTo.with_options(class_name: "Book", foreign_key: "book_id"),
    reader: Field::BelongsTo.with_options(class_name: "User", foreign_key: "user_id"),
    id: Field::Number,
    book_id: Field::Number,
    user_id: Field::Number,
    created_at: Field::DateTime.with_options(format: '%B %e, %Y'),
    updated_at: Field::DateTime.with_options(format: '%B %e, %Y'),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :books_to_read,
    :reader,
    :created_at
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :books_to_read,
    :reader,
    :created_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :books_to_read,
    :reader,
  ].freeze

  # Overwrite this method to customize how checkouts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(checkout)
  #   "Checkout ##{checkout.id}"
  # end
end
