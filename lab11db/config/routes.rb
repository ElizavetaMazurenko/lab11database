Rails.application.routes.draw do
  get 'palin/inputdb'
  get 'palin/outputdb'
  get 'palin/results'
  root to: 'palin#inputdb'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
