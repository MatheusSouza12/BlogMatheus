class AddDeletedAtToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :deleted_at, where: "deleted_at IS NULL"
  end
end
