class MakeUserIdOptionalForCharacters < ActiveRecord::Migration[7.0]
  def change
    change_column_null :characters, :user_id, true
  end
end
