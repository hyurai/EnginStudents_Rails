class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user
      t.text :front_img,null: true
      t.text :back_img,null: true
      t.text :url,null: true
      t.text :one_word_comment,null: true
      t.timestamps
    end
  end
end
