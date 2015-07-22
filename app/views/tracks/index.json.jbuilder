json.array! @tracks do |track|
  json.(track, :soundclound_id, :title, :description, :genre, :license,
    :permalink_url, :waveform_url, :stream_url, :purchase_url)
  json.location do
    json.city track.user.city
    json.state track.user.state
  end
  json.artist track.user.artist_name
end
