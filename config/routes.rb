Rails.application.routes.draw do

  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end
    end
  end
  get '/todo_lists/:todo_list_id/todo_items/:id/complete' => 'todo_items#complete'
  get '/todo_lists/:todo_list_id/todo_items' => 'todo_items#index'
  root "todo_lists#index"

end