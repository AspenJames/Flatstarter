Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # This %i() syntax is another way to generate an array of symbols
  # when you pass in whitespace separated words, they are each
  # converted into symbols and put in an array. %i(this is cool) => [:this, :is, :cool]

  resources :projects, :only => %i(index show)
  resources :users, :only => %i(index show)
  resources :backings, :only => %i(index)

end
