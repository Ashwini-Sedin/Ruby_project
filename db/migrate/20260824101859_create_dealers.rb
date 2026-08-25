class CreateDealers < ActiveRecord::Migration[7.2]
  def change
    create_table :dealers do |t|
      t.string :name

      t.timestamps
    end
  end
end
