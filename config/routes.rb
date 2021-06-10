Rails.application.routes.draw do
  get 'submits/index' => "submits#index"
  get "submits/new" => "submits#new"
  post "submits/create" => "submits#create"
  get 'submits/:id' => 'submits#show'
  get 'submits/:id/edit' => 'submits#edit'
  post "submits/:id/update" => "submits#update"
  post "submits/:id/destroy" => "submits#destroy"


  get '/' => "home#top"
  get "about" => "home#about"
end
