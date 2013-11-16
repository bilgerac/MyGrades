MyGrades::Application.routes.draw do
  resources :assignments
  root :to => redirect('/assignments')
end