class CreateExcuses < ActiveRecord::Migration[7.2]
  def change
    create_table :excuses do |t|
      t.string :comment
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
