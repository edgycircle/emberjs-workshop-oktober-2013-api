EmberjsWorkshopOktober2013Api::Application.routes.draw do
  match '*all' => 'application#cors_preflight_check', :via => [ :options ]

  resources :time_entries, defaults: { format: :json } do
    collection do
      get :active
    end
  end

  resources :tasks, defaults: { format: :json }

  resources :projects, defaults: { format: :json }
end
