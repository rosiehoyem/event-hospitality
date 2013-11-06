class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date_start
      t.datetime :date_end
      t.string :location

      t.timestamps
    end
  end
end
