# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8

Category.create(:id => 1, :name => 'Tech News')
Category.create(:id => 2, :name => 'Develop News')
Category.create(:id => 3, :name => 'Company Tech Blog')
Category.create(:id => 4, :name => 'Personal Tech Blog')
Category.create(:id => 5, :name => 'Github Release')
Category.create(:id => 6, :name => 'Github Trend')
Category.create(:id => 99, :name => 'General News')

