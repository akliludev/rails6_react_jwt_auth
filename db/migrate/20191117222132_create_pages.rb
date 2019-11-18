class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.boolean :allow_unauth

      t.timestamps
    end

    add_index :pages, %i(title), unique: true
  end
end
