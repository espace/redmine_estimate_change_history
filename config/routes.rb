#custom routes for this plugin
if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
    match 'issues/:issue_id/estimates', :controller => "estimates", :action => 'index', :method => :get, :as => :list_estimate_updates
  end
else
  ActionController::Routing::Routes.draw do |map|
    #http://redmine.espace.com.eg/projects/red-track/issues
    map.list_estimate_updates 'issues/:issue_id/estimates', :controller => "estimates", :action => 'index', :method => :get
  end
end
