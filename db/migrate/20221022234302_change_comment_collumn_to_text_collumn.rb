class ChangeCommentCollumnToTextCollumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :comment, :text
  end
end
