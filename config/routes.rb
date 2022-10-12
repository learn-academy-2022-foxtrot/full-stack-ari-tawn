Rails.application.routes.draw do
get 'posts' => 'post#index', as: 'posts'
get 'post/:id' => 'post#show', as: 'post'
root "post#index"
end
