json.array!(@requests) do |request|
  json.extract! request, :id, :title, :applier, :file, :reason
  json.url request_url(request, format: :json)
end
