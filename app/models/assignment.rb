class Assignment < ActiveRecord::Base
    attr_accessible :title #list of fields that you want to be accessible
    attr_accessible :dueDate
    attr_accessible :points
    attr_accessible :possiblePoints
    attr_accessible :percentGrade

    after_initialize :init #initial settings

    def init
        self.percentGrade ||= 0 #sets the value only if it's nil
        self.points ||=0
    end
end