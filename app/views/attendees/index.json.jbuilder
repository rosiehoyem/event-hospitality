json.array!(@attendees) do |attendee|
  json.extract! attendee, :event_id_id, :user_id_id
  json.url attendee_url(attendee, format: :json)
end
