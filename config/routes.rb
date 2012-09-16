#custom routes for this plugin
ActionController::Routing::Routes.draw do |map|
  #http://redmine.espace.com.eg/projects/red-track/issues
  map.list_estimate_updates 'issues/:issue_id/estimates', :controller => "estimates", :action => 'index', :method => :get
end