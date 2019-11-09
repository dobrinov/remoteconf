class AddSocialHandlesToPresentationProposals < ActiveRecord::Migration[6.0]
  def change
    add_column :presentation_proposals, :presenter_github, :string
    add_column :presentation_proposals, :presenter_gitlab, :string
    add_column :presentation_proposals, :presenter_twitter, :string
  end
end
