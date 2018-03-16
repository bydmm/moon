attributes :id, :name, :tag, :created_at

node(:created_at) do |service|
  service.created_at.to_i
end
