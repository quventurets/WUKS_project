require "administrate/base_dashboard"

class UnivDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    date_general: Field::String,
    date_recommend: Field::String,
    date_number: Field::Number.with_options(decimals: 2),
    location: Field::String,
    otherFac: Field::Number,
    examtypes: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :date_general,
    :date_recommend,
    :date_number,
    :location,
    :otherFac,
    :examtypes,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :date_general,
    :date_recommend,
    :date_number,
    :location,
    :otherFac,
    :examtypes,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :date_general,
    :date_recommend,
    :date_number,
    :location,
    :otherFac,
    :examtypes,
  ].freeze

  # Overwrite this method to customize how univs are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(univ)
  #   "Univ ##{univ.id}"
  # end
end
