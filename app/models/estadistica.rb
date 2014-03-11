class Estadistica
  include Mongoid::Document
  include Mongoid::Timestamps
  field :hits, type: Integer, default: 0
  field :_id, type: String
end
