json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :area, :info_member
  json.url event_url(event, format: :json)
end
