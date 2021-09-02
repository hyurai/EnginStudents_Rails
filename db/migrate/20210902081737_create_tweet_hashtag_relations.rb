class CreateTweetHashtagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :tweet_hashtag_relations do |t|
      t.references :tweet,foreigin_key: true
      t.references :hashtag,foreigin_key: true

      t.timestamps
    end
  end
end
