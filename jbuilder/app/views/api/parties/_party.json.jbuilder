json.extract! party, :name, :location
json.guests do
  json.array! party.guests do |guest|
    json.partial! 'api/guests/guest', guest: guest
    if include_gifts
      json.gifts do
        json.partial! 'api/gifts/gift', collection: guest.gifts, as: :gift
      end
    end
  end
end
