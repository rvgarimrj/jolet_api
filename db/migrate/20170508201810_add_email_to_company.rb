class AddEmailToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :company_email, :string
  end
end
