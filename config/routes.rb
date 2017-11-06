Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :calculator, controller: "calculator", only: [] do
    get :add
  end
end
