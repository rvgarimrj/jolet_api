class AddPhoneToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :phone, :string
  end
end
