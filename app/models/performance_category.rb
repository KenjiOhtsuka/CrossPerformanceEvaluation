class PerformanceCategory < ActiveRecord::Base
  attr_accessible :begin_date, :end_date, :name, :description, :order
end
