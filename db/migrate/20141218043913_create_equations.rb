class CreateEquations < ActiveRecord::Migration
  def change
    create_table :equations do |t|
      t.string :name
      t.string :desc
      t.string :equation

      t.timestamps null: false
    end
  end
end
