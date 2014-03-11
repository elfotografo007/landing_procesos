class Usuario
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  field :nombre, type: String
  field :telefono, type: String
  field :ciudad, type: String
  field :correo, type: String
  
  validates_presence_of :nombre, :correo, message: "es obligatorio"
  
end