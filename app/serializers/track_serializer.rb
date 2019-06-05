class TrackSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :date, :duration, :tempo, :keysig

end
