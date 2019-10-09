require "administrate/base_dashboard"

class EventDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    place: Field::String,
    date: Field::String,
    pref: Field::String,
    event_type: Field::String,
    status: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    outline: Field::Text,
    otherinfo: Field::Text,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :place,
    :date,
    :pref,
    :event_type,
    :status,
    :outline,
    :otherinfo,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :place,
    :date,
    :pref,
    :event_type,
    :status,
    :created_at,
    :updated_at,
    :outline,
    :otherinfo,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :id,
    :name,
    :place,
    :date,
    :pref,
    :event_type,
    :status,
    :outline,
    :otherinfo,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
