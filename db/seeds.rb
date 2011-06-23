# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_category_data()

   Category.destroy_all
   data = YAML.load_file('./db/category.yml')
   data.each do |p|
     Category.new {|category|
       category.id = p[:id]
       category.name = p[:name]
     }.save
   end
end
create_category_data()
