class Pet < ApplicationRecord
  belongs_to :kind
  belongs_to :owner
  belongs_to :breed
end
