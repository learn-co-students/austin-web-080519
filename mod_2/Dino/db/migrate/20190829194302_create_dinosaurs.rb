class CreateDinosaurs < ActiveRecord::Migration[6.0]
  def change
    create_table :dinosaurs do |t|
      t.string :age
      t.string :weight
      t.string :ice_cream

      t.timestamps
    end
  end
end
