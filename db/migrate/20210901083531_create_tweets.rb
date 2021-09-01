class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.references :user,foreigin_key: true
      t.text :text
      t.string :company_name,null: true
      t.string :job,null: true
      t.date :entry_date,null: true
      t.date :start_date,null: true
      t.date :end_date,null: true 
       
      t.timestamps
    end
  end
end
