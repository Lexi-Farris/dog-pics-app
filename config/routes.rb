Rails.application.routes.draw do

get "/pics" => "pics#index"
post "/pics" => "pics#create"
get "/pics/:id" => "pics#show"
patch "/pics/:id" => "pics#update"
delete "/pics/:id" => "pics#destroy"

end
