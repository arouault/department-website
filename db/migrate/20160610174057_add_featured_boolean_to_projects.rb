class AddFeaturedBooleanToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :featured, :boolean, default: false
  end
end
