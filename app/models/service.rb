class Service < ActiveRecord::Base
    belongs_to :state
    has_many :telephones
end
