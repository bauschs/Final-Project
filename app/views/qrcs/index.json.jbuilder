json.array!(@qrcs) do |qrc|
  json.extract! qrc, :id, :code
  json.url qrc_url(qrc, format: :json)
end
