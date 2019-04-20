# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# projects_todos_data = YAML.load(Rails.root.join('db/seeds/seeds.yml'))
#   projects_todos_data.each do |project_id,todos|
#     project = Project.find(project_id)
#     project.todos << todos.map do |key| 
#       Keyword.find_or_create_by(word: key)
#     end 
#   end 
# seed_file = Rails.root.join('db', 'seeds', 'seeds.yml')
# config = YAML::load_file(seed_file)
# Project.create!(config)
data = HashWithIndifferentAccess.new(YAML::load_file(File.join(Rails.root, 'db/seeds', 'seeds.yml')))

data[:projects].each do |project|
    p = Project.new(title: project[:title])
    project[:todos].each do |todo|
        p.todos << Todo.create(todo)
    end
    p.save!
end