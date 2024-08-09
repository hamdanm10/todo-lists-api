Rails.application.routes.draw do
  draw(:devise)

  resources :lists, except: %i[destroy] do
    member do
      patch :delete
    end
  end
end
