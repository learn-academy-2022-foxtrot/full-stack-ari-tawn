Rails.application.routes.draw do
get 'posts' => 'post#index', as: 'posts'
get 'posts/new' => 'post#new', as: 'new_post'
get 'post/:id' => 'post#show', as: 'post'
root "post#index"
end
