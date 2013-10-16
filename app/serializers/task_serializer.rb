class TaskSerializer < ApplicationSerializer
  attributes :id, :name
  has_many :time_entries
  has_one :project
end
