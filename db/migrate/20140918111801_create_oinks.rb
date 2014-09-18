class CreateOinks < ActiveRecord::Migration
  def change
    create_table :oinks do |t|
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end
