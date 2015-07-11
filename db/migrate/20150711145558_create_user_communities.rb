class CreateUserCommunities < ActiveRecord::Migration
  def change
    create_table :user_communities do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
