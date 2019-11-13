class StaticPagesController < ApplicationController
  def landingpage
    set_meta_tags title: 'Async conference for software developers'
  end

  def thanks_for_submitting_presentation
  end
end
