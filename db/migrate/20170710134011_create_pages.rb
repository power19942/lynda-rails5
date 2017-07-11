class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer 'subject_id'
      t.string 'name'
      t.string 'permalink'
      t.string 'position'
      t.boolean 'visible'
      t.timestamps
    end
  end
end
