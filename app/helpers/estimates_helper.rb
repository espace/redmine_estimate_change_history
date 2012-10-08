module EstimatesHelper

  def time_tag(time)
    text = distance_of_time_in_words(Time.now, time)
    project = @issue.project
    link_to(text, {:controller => 'activities', :action => 'index', :id => @project, :from => User.current.time_to_date(time)}, :title => format_time(time))
  end

end
