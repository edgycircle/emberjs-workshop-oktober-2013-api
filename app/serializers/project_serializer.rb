class ProjectSerializer < ApplicationSerializer
  attributes :id, :name
  has_many :tasks
end
