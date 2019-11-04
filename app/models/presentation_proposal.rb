class PresentationProposal < ApplicationRecord
  validates :presenter_name,
            :presenter_email,
            :presenter_introduction,
            :presentation_title,
            :presentation_description,
            :audience_experience_level, presence: true

  validates :presenter_email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
