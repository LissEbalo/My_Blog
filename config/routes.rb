Rails.application.routes.draw do
  devise_for :users
  root "articles#index"

  resources :articles do
    resources :comments
  end
  # Ruta para el perfil del usuario
  get "profile", to: "users#profile", as: :profile

  # Ruta para probar emails
  get "test/send_test_email", to: "test_mailer#send_test_email", as: :send_test_email
  # puede sere debajo de get "test/send_test_email"
  get "test/notifications", to: "test_mailer#test_notifications", as: :test_notifications
  get "test/notification/:type", to: "test_mailer#test_single_notification", as: :test_single_notification
end
