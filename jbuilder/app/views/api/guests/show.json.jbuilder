json.partial! 'guest', guest: @guest
json.gifts do
  json.partial! 'api/gifts/gift', collection: @guest.gifts, as: :gift
end
