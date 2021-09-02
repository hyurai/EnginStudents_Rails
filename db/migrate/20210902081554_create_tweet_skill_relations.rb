class CreateTweetSkillRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :tweet_skill_relations do |t|
      t.references :tweet,foreigin_key: true
      t.references :skill,foreigin_key: true

      t.timestamps
    end
  end
end
