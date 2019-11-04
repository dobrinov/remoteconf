class CreatePresentationProposals < ActiveRecord::Migration[6.0]
  def change
    create_table :presentation_proposals do |t|
      t.string :presenter_name, null: false
      t.string :presenter_email, null: false
      t.text :presenter_introduction, null: false
      t.string :presentation_title, null: false
      t.text :presentation_description, null: false
      t.string :audience_experience_level, null: false

      t.timestamps
    end
  end
end
