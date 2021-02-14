class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :phone

      t.timestamps
    end
  end
end
