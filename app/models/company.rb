class Company < ApplicationRecord
  enum type: [ :cpf, :cnpj ]
  validates :company_name, :short_name, :company_email, presence: true, uniqueness: true
  #  validates :company_name, presence: { message: "must be given please" }
end
