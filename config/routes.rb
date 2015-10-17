Rails.application.routes.draw do
  resources :surgeons
  resources :surgicals
  resources :complications
  resources :iol_insertions
  resources :iol_powers
  resources :surgeries
  resources :medical_records
  resources :treatments
  resources :diagnoses
  resources :visual_acuities
  resources :patients
  resources :lgas
  resources :states
  
  root "patients#index"
end
