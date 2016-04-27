class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
        t.string :number
        t.references :service
        t.timestamps null: false
    end
  end
end
