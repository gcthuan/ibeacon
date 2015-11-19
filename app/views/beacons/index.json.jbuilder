json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :uuid
  json.url beacon_url(beacon, format: :json)
end
