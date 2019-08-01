class Job < ApplicationRecord
  belongs_to :developer
  belongs_to :project
end
