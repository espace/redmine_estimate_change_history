require 'redmine'
#require 'dispatcher'
require_dependency 'issue_view_hook'

Rails.configuration.to_prepare do
  require_dependency 'issue'
  require 'patch_for_issue'
  Issue.send( :include, PatchForIssue)
end

Redmine::Plugin.register :redmine_estimate_change_history do
  name 'Redmine Estimate Change History plugin'
  author 'Yaser'
  description 'This plugin keeps track of the changes in the estimated_hours column in the Issue model'
  version '0.0.1'
end
