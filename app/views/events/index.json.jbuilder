json.array!(@events) do |event|
  json.extract! event, :name, :date_start, :date_end, :location
  json.url event_url(event, format: :json)
end
