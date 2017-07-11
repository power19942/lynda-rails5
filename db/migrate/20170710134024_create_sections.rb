class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer 'page_id'
      t.string 'name'
      t.string 'position'
      t.boolean 'visible',:default=>false
      t.string 'content_type'
      t.text 'content'
      t.timestamps
    end
  end
end
