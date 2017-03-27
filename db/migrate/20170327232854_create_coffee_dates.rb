class CreateCoffeeDates < ActiveRecord::Migration[5.0]
  def change
    create_table :coffee_dates do |t|
      t.string :company

      t.timestamps
    end
  end
end
