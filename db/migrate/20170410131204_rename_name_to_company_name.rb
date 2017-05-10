class RenameNameToCompanyName < ActiveRecord::Migration[5.0]
  def change
    rename_column :companies, :name, :company_name
  end
end
