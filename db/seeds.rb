# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "before: Category.count: #{Category.count}"
puts " #{Category.pluck(:name).join(" ")}"
Category.transaction do
  %w(魚 肉 野菜 スイーツ その他).each do |category_name|
    Category.find_or_create_by_name!(category_name)
  end
end
puts "after: Category.count: #{Category.count}"
puts " #{Category.pluck(:name).join(" ")}"