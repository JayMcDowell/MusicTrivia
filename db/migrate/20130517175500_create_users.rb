class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :initials
    end
  end
end