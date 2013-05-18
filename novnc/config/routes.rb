Rails.application.routes.draw do
  namespace 'no_vnc' do
    match 'home' => 'no_vnc#home', :view => :get
  end
end
