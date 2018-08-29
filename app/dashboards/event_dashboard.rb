require "administrate/base_dashboard"

class EventDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    event_items: Field::NestedHasMany.with_options(skip: :event),
    event_media_partners: Field::NestedHasMany.with_options(skip: :event),
    videos: Field::NestedHasMany.with_options(skip: :event),
    images: Field::NestedHasMany.with_options(skip: :event),
    id: Field::Number,
    title: Field::String,
    place_title: Field::String,
    coordinate: Field::String,
    description: Field::Text,
    start_at: Field::DateTime,
    end_at: Field::DateTime,
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
    :title,
    :place_title,
    :coordinate,
    :description,
    :start_at,
    :end_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :place_title,
    :coordinate,
    :description,
    :start_at,
    :end_at,
    :created_at,
    :updated_at,
    :event_items,
    :event_media_partners,
    :videos,
    :images,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :place_title,
    :coordinate,
    :description,
    :start_at,
    :end_at,
    :event_items,
    :event_media_partners,
    :videos,
    :images,
  ].freeze

  # Overwrite this method to customize how events are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(event)
  #   "Event ##{event.id}"
  # end
end
