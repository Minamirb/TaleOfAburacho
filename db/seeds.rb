# -*- coding: utf-8 -*-
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

def create_sake_data()
  Sake.destroy_all
  data = YAML.load_file('./db/details.yml')
  data.each do |p|
    Sake.new {|sake|
      sake.id = p[:id]
      sake.name = p[:name] 
      sake.price = p[:price] 
      sake.recommend=  ""
      sake.comment= p[:detail]
      sake.url_large= p[:urllarge]
      sake.url_small= p[:urlsmall]
    }.save
  end
end

def create_sake_category_data()
  SakeCategory.destroy_all
  data = YAML.load_file('./db/category.yml')
  data.each do |p|
    category_id = p[:id]
    p[:list].each do |sake_id|
      SakeCategory.new {|sake_cate|
        sake_cate.sake_id= sake_id
        sake_cate.category_id= category_id
      }.save
    end
  end
end

def create_feeling_data()
  Feeling.destroy_all
#   Feeling.new {|f|
#     f.sake_id=  '4'
#     f.member_id='1'
#     f.doux_brut=  '甘い'
#     f.bitter=  '苦い'
#     f.rough=  '渋い'
#     f.hard_right=  '濃い'
#     f.hard_right=  '旨い'
#     f.memo =  'なかなかの味'
#   }.save
#   Feeling.new {|f|
#     f.sake_id=  '4'
#     f.member_id='2'
#     f.doux_brut=  '甘くない'
#     f.bitter=  '苦くない'
#     f.rough=  '渋くない'
#     f.hard_right=  '薄い'
#     f.hard_right=  '旨い'
#     f.memo =  'いまいち'
#   }.save
end

def destroy
  History.destroy_all
  CategoryHistory.destroy_all
end

destroy()
create_feeling_data()
create_category_data()
create_sake_data()
create_sake_category_data()

