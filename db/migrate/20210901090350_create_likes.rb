class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
       t.references :user,foreigin_key: true
       t.references :tweet,foreigin_key: true
      t.timestamps
    end
  end
end
