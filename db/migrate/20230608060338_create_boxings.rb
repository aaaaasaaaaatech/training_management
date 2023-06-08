class CreateBoxings < ActiveRecord::Migration[6.0]
  def change
    create_table :boxings do |t|

      t.timestamps
    end
  end
end
