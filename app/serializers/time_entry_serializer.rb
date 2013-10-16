class TimeEntrySerializer < ApplicationSerializer
  attributes :id, :started_at, :ended_at
  has_one :task
end
