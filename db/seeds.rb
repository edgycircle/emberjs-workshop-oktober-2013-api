if Project.count < 1

  project_a = Project.new name: 'Ember.js Workshop'
  project_b = Project.new name: 'Der Zeitverkäufer'
  project_c = Project.new name: 'GitHub Klon'

  project_a.tasks << Task.create(name: 'Wireframes erstellen')
  project_a.tasks << Task.create(name: 'Website umsetzen')
  project_a.tasks << Task.create(name: 'Beispiel Anwendung organisieren')

  project_b.tasks << Task.create(name: 'API entwickeln')

  project_c.tasks << Task.create(name: 'Neuen Release deployen')

  project_a.save
  project_b.save
  project_c.save

  Project.all.each do |project|
    project.tasks.each do |task|

      (10 * rand).to_i.times do
        start = Time.at((rand * Time.now.to_f + (Time.now - 10.days).to_f).to_i)
        task.time_entries << TimeEntry.create(started_at: start, ended_at: start + (300 * rand).minutes.to_i)

        task.save
      end
    end
  end
end
