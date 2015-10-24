class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title,          null: false, default: 'Untitled'
      t.text :content,          default: ""
      t.string :slug

      t.string :seo_title
      t.string :seo_description
      t.string :seo_keywords

      t.string :status
      t.string :format

      t.string :featured_image

      t.timestamps null: false
    end
  end
end
