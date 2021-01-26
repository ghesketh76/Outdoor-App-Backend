class CreateRatingJoiners < ActiveRecord::Migration[6.0]
  def change
    create_table :rating_joiners do |t|
      t.string :rating
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
