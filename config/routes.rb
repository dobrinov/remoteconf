Rails.application.routes.draw do
  resources :presentation_proposals, only: :create
  get :become_a_speaker, to: 'presentation_proposals#new'
  get :thanks, to: 'static_pages#thanks_for_submitting_presentation'
  root to: 'static_pages#landingpage'
end
