class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.date :started_at
      t.date :ended_at
      t.references :task, index: true

      t.timestamps
    end
  end
end
