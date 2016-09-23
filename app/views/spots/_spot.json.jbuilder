json.extract! spot, :id, :name, :prefectures, :postcode, :address, :mapcode, :lat, :lng, :access, :category, :url, :picture, :memo, :created_at, :updated_at
json.url spot_url(spot, format: :json)