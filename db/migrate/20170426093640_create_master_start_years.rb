class CreateMasterStartYears < ActiveRecord::Migration[5.0]
  def change
    create_table :master_start_years do |t|
      t.integer :year
      t.timestamps
    end
  end
end
