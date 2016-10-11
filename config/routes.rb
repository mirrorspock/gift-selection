Rails.application.routes.draw do
  resources :users, param: :unique_code
  get 'thank_you' => 'users#thanks', as: 'thanks'
  # get 'expired' => 'quotes#expired', as: 'expired'
  # root 'users#entry'
end
