class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.datetime :started_at
      t.datetime :ended_at
      t.references :task, index: true

      t.timestamps
    end
  end
end
