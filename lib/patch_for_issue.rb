require_dependency 'issue'
module PatchForIssue
  def self.included(base)
    base.send(:extend,ClassMethods)
    base.send(:include, InstanceMethods)
    base.class_eval do
      unloadable
      has_many :estimate_updates
      after_update :save_update
    end
  end
  
  module ClassMethods
  end
  
  module InstanceMethods
    def save_update
      if self.changed? && self.changes['estimated_hours'] && !@duplicate
        EstimateUpdate.create(:issue_id=>self.id, 
                              :old_estimated_hours =>self.changes['estimated_hours'][0], 
                              :new_estimated_hours=>self.estimated_hours)
        @duplicate=true
      end                                      
    end
    
  end
end