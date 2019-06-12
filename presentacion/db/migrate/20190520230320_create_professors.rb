class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :name
      t.integer :file_number

      t.timestamps
    end
  end
end
