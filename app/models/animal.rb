# app/models/animal.rb
class Animal < ApplicationRecord
  belongs_to :herd

  after_create_commit -> { broadcast_event("animal_added", "Animal #{name} was added to #{herd.name} Herd.") }
  after_update_commit -> { broadcast_event("animal_sold", "Animal #{name} was marked as sold.") if saved_change_to_status? && status == 'sold' }

  private

  def broadcast_event(event_type, message)
    broadcast_prepend_to(
      "dashboard_events",
      partial: "dashboard/event",
      target: "events_stream",
      locals: { message:, event_type: }
    )
  end
end
