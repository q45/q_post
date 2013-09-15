class AddForeignKeysToPostCatergory < ActiveRecord::Migration
  def change
  	add_column :memberships, :post_id, :integer
  	add_column :memberships, :catergory_id, :integer
  end

end
