json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :UUID
  json.url beacon_url(beacon, format: :json)
end
