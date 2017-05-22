Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "home#index"
  get '/dinner' => "home#dinner"
  get '/lunch' => "home#lunch"
  get '/brunch' => "home#brunch"
  get '/drinks' => "home#drinks"
  get '/reservations' => "home#reservations"
  get '/contact' => "home#contact"
  get '/map' => "home#map"
end
