class AddNeededToProject < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :needed
  end
end
