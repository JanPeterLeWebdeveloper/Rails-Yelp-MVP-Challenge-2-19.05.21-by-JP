# frozen_string_literal: true

class FixColumnAdressToAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :adress, :address
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
