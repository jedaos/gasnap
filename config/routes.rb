Rails.application.routes.draw do
  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "login#index"

  # get '/sign_out' => 'sign_out#sign_out'

  devise_scope :user do
    get "/sign_out" => "sign_out#sign_out"
  end

  devise_scope :user do
    get "/product" => "product#product"
  end

  devise_scope :user do
    get "/sign_in" => "sign_in#sign_in"
  end

  devise_scope :user do
    get "/sign_up" => "sign_up#sign_up"
  end

end
