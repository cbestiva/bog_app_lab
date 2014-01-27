BogApp::Application.routes.draw do

  root to: "bogs#index"
  
  get "/bogs", to: "bogs#index"

  get "/bogs/new", to: "bogs#new"

  get "/bogs/:id", to: "bogs#show"

  get "/bogs/:id/edit", to: "bogs#edit"

  post "/bogs", to: "bogs#create"

  put "/bogs/:id", to: "bogs#update"

  delete "/bogs/:id/edit", to: "bogs#delete"

end
