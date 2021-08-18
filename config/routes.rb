Rails.application.routes.draw do

  root 'static_pages#top'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  resources :users do
    member do
      resources :carfares # 交通費
      resources :schedules do # スケジュール
        collection do
          get 'edit_one_month'
          patch 'update_one_month'
          get 'all_edit_one_month' # 全体のスケジュール
          patch 'all_update_one_month'
        end 
      end 
    end
  end
end
