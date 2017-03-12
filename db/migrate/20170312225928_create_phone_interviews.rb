class CreatePhoneInterviews < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_interviews do |t|
      t.string :company

      t.timestamps
    end
  end
end
