class CreateCts < ActiveRecord::Migration
  def change
    create_table :cts do |t|
      t.string :description

      t.timestamps
    end
  end
end
