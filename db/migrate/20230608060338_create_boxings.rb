class CreateBoxings < ActiveRecord::Migration[6.0]
  def change
    create_table :boxings do |t|
      t.string :name,     null: false

    end
  end
end
