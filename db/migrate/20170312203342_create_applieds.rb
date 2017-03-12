class CreateApplieds < ActiveRecord::Migration[5.0]
  def change
    create_table :applieds do |t|
      t.string :company

      t.timestamps
    end
  end
end
