json.extract! itaewon_record, :id, :lat, :lng, :name, :url, :when, :created_at, :updated_at
json.url itaewon_record_url(itaewon_record, format: :json)
