class AddOpinionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :opinion, :text
  end
end
