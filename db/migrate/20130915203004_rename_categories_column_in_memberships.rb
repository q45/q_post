class RenameCategoriesColumnInMemberships < ActiveRecord::Migration
  def change
  	rename_column :memberships, :catergory_id, :category_id
  end
end
