class PainLevel
  include Mongoid::Document
  include Mongoid::Timestamps
  field :pain_level, type: Integer
end
