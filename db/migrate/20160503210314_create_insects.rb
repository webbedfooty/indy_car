class CreateInsects < ActiveRecord::Migration
  def change
    create_table :insects do |t|
      t.string :name
      t.string :team
      t.string :motor

      t.timestamps null: false
    end
  end
end
