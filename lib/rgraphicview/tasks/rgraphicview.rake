# frozen_string_literal: true

tasks = {
  "rgraphicview:view" => "Provide a graphic view of your project"
}

desc "List all available tasks in rgraphicview"
task :rgraphicview do
  puts "Available Rgraphicview tasks are:"
  tasks.each { |task, description| puts task.ljust(30) + description}
end
