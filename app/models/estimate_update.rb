class EstimateUpdate < ActiveRecord::Base
  belongs_to :issue
  validates_presence_of :issue_id,:old_estimated_hours,:new_estimated_hours
  def issue_created_on
    issue.created_on.to_date
  end
end
