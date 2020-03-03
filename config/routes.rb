Rails.application.routes.draw do
	root :to => 'novels#top'
	get 'books' => 'novels#index'
	post 'books' => 'novels#create'
	get 'books/:id' => 'novels#show', as: 'book'
	get 'books/:id/edit' => 'novels#edit', as: 'edit_book'
	patch 'books/:id/edit' => 'novels#update', as: 'update_book'
	delete 'books/:id' => 'novels#destroy'
end