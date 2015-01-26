json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :user_id, :check_in, :check_out, :notes
  json.url reservation_url(reservation, format: :json)
end
