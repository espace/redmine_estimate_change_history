class IssueViewHook < Redmine::Hook::ViewListener
  render_on :view_issues_show_details_bottom, :partial => 'replace_text_with_link'
end
