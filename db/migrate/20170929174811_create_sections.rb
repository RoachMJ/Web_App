class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :number
      t.references :course, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
