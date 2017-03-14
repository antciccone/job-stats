class AddUserToApplied < ActiveRecord::Migration[5.0]
  def change
    add_column :applieds, :user_id, :string
    add_index :applieds, :user_id
    add_column :companies, :user_id, :string
    add_index :companies, :user_id
    add_column :homeworks, :user_id, :string
    add_index :homeworks, :user_id
    add_column :in_people, :user_id, :string
    add_index :in_people, :user_id
    add_column :phone_interviews, :user_id, :string
    add_index :phone_interviews, :user_id
    add_column :responses, :user_id, :string
    add_index :responses, :user_id
  end
end
