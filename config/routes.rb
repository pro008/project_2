Rails.application.routes.draw do
	post 'users/:id/update', to: 'users#update'
	post 'users/:id/delete', to: 'users#destroy'
	resources :users, defaults: {format: :json}
	post 'user_profiles/:id/update', to: 'user_profiles#update'
	post 'user_profiles/:id/delete', to: 'user_profiles#destroy'
	resources :user_profiles, defaults: {format: :json}
	post 'roles/:id/update', to: 'roles#update'
	post 'roles/:id/delete', to: 'roles#destroy'
	resources :roles, defaults: {format: :json}

	post 'products/:id/update', to: 'products#update'
	post 'products/:id/delete', to: 'products#destroy'
	resources :products, defaults: {format: :json}
	post 'product_i_settings/:id/update', to: 'product_i_settings#update'
	post 'product_i_settings/:id/delete', to: 'product_i_settings#destroy'
	resources :product_i_settings, defaults: {format: :json}
	post 'product_settings/:id/update', to: 'product_settings#update'
	post 'product_settings/:id/delete', to: 'product_settings#destroy'
	resources :product_settings, defaults: {format: :json}
	
	post 'feedbacks/:id/update', to: 'feedbacks#update'
	post 'feedbacks/:id/delete', to: 'feedbacks#destroy'
	resources :feedbacks, defaults: {format: :json}
	post 'categories/:id/update', to: 'categories#update'
	post 'categories/:id/delete', to: 'categories#destroy'
	resources :categories, defaults: {format: :json}

	post 'shops/:id/update', to: 'shops#update'
	post 'shops/:id/delete', to: 'shops#destroy'
	resources :shops, defaults: {format: :json}
	post 'shop_profiles/:id/update', to: 'shop_profiles#update'
	post 'shop_profiles/:id/delete', to: 'shop_profiles#destroy'
	resources :shop_profiles, defaults: {format: :json}

	post 'demos/:id/update', to: 'demos#update'
	post 'demos/:id/delete', to: 'demos#destroy'
	resources :demos, defaults: {format: :json}
end
