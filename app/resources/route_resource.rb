class RouteResource < JSONAPI::Resource
  attributes :name, :agency
  has_many :trips
end
