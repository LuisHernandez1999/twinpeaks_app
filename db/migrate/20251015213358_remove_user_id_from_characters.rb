class RemoveUserIdFromCharacters < ActiveRecord::Migration[7.0]
  def change
    remove_reference :characters, :user, foreign_key: true
  end
end
