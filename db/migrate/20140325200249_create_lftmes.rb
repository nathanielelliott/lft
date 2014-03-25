class CreateLftmes < ActiveRecord::Migration
  def change
    create_table :lftmes do |t|
      t.string :user
      t.string :request
      t.string :location

      t.timestamps
    end
  end
end
