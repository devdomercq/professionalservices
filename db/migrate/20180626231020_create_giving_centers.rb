class CreateGivingCenters < ActiveRecord::Migration
  def change
    create_table :giving_centers do |t|
      t.string :bpecode
      t.string :organization
      t.text :description
      t.text :eventdate
      t.string :category

      t.timestamps null: false
    end
  end
end
