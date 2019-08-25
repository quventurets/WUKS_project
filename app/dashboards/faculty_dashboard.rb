require "administrate/base_dashboard"

class FacultyDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    s_name: Field::String,
    f_name: Field::String,
    date_general: Field::String,
    isThereRec: Field::Boolean,
    date_recomend: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :s_name,
    :f_name,
    :date_general,
    :isThereRec,
    :date_recomend,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :s_name,
    :f_name,
    :date_general,
    :isThereRec,
    :date_recomend,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :s_name,
    :f_name,
    :date_general,
    :isThereRec,
    :date_recomend,
  ].freeze

  # Overwrite this method to customize how faculties are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(faculty)
  #   "Faculty ##{faculty.id}"
  # end
end
