class CreateGains < ActiveRecord::Migration[6.0]
  def change
    create_table :gains do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
