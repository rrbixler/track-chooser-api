class AddUserToTracks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tracks, :user, foreign_key: true
  end
end
