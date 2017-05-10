class Company < ApplicationRecord
  enum type: [ :cpf, :cnpj ]
  validates :company_name, :uniqueness => true
  validates :short_name, :uniqueness => true
end
