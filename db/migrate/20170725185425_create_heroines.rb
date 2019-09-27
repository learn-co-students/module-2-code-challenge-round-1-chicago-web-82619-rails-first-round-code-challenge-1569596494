class CreateHeroines < ActiveRecord::Migration[5.0]
  def change
    create_table :heroines do |t|
      t.integer :power_id
      t.string :name
      t.string :super_name

      t.timestamps
    end
  end
end
