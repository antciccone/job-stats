class CreateInPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :in_people do |t|
      t.string :company

      t.timestamps
    end
  end
end
