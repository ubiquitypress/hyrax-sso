class AddFieldsForSso < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :enable_sso, :boolean
    add_column :accounts, :work_os_organisation, :string
    add_column :accounts, :work_os_connection, :string
    add_column :accounts, :work_os_managed_domain, :string
  end
end
