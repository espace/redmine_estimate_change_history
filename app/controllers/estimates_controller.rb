class EstimatesController < ApplicationController
  include EstimatesHelper
  
  def index
    @issue = Issue.find(params[:issue_id])
    @estimates = EstimateUpdate.find(:all,
                                     :conditions=>{:issue_id=>params[:issue_id]},
                                     :order=>:created_at)
  end
  
end
