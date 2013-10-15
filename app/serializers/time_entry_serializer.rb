class TimeEntrySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :task
end
