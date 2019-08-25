require "administrate/base_dashboard"

class CompDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    area: Field::String,
    scale: Field::String,
    place: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    employees: Field::Number,
    address: Field::String,
    founded_year: Field::Number,
    founded_month: Field::Number,
    what: Field::Text,
    why: Field::Text,
    how: Field::Text,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :area,
    :scale,
    :place,
    :employees,
    :address,
    :founded_year,
    :founded_month,
    :what,
    :why,
    :how,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :area,
    :scale,
    :place,
    :created_at,
    :updated_at,
    :employees,
    :address,
    :founded_year,
    :founded_month,
    :what,
    :why,
    :how,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :area,
    :scale,
    :place,
    :employees,
    :address,
    :founded_year,
    :founded_month,
    :what,
    :why,
    :how,
  ].freeze

  # Overwrite this method to customize how comps are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(comp)
  #   "Comp ##{comp.id}"
  # end
end
