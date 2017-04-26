class CreateMasterVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :master_variants do |t|
      t.string :variant
      t.timestamps
    end
  end
end
