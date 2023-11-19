Rails.application.routes.draw do

  scope :v2, module: :v2 do
  resources :fuests, only: [:index]

  end
 
end



