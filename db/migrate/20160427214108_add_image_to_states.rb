class AddImageToStates < ActiveRecord::Migration
  def change
    add_column :states, :image, :string
  end
end
