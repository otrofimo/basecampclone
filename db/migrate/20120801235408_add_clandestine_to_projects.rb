class AddClandestineToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :clandestine, :boolean
    remove_column :projects, :private
  end
end
