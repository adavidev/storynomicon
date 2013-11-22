class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.belongs_to :post

      t.timestamps
    end
  end
end
