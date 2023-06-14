class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.integer     :boxing_id   , null: false
      t.timestamps
    end
  end
end
