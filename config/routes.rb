# frozen_string_literal: true

Rails.application.routes.draw do
  resources :form_answers
  resources :user_has_forms
  resources :users
  resources :forms

  post '/user/auth', to: 'users#login'

  get '/respondents/:form_id', to: 'user_has_forms#respondents'

  get '/assigned/:user_id', to: 'user_has_forms#assigned'

  get '/create_by_me/:user_id', to: 'forms#create_by_me'

  get 'same_form/:form_id', to: 'form_answers#same_form'

  # Rota referente a estoria de usuario EU[16]
  post '/find_id', to: 'users#find_id'

  get 'download_answers/:form_id', to: 'form_answers#download_answers'
end
