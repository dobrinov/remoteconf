class PresentationProposalsController < ApplicationController
  before_action do
    set_meta_tags title: 'Become a speaker'
  end

  def new
    @presentation_proposal = PresentationProposal.new
  end

  def create
    @presentation_proposal = PresentationProposal.new presentation_proposal_params

    if @presentation_proposal.save
      redirect_to thanks_path
    else
      render :new
    end
  end

  private

  def presentation_proposal_params
    params.require(:presentation_proposal).permit :presenter_name,
                                                  :presenter_email,
                                                  :presenter_introduction,
                                                  :presentation_title,
                                                  :presentation_description,
                                                  :audience_experience_level
  end
end
