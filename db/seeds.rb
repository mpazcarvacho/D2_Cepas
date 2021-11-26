# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do |i|
#   Wine.create!(name: "Vino #{i+1}")
#   Strain.create!(name: "Cepa #{i+1}")
#   puts "Cepa y Vino #{i+1}"
#   end
#   @wines = Wine.all
#   @strain = Strain.all
#   30.times do |x|
#   WinesStrain.create!(wine: @wines.sample , strain_id: @strain.sample.id, percentage:10)
# end

# Preloading data to Job Table

if(!Job.any?)
  Job.create(name: "Editor")
  Job.create(name: "Reviewer")
  Job.create(name: "Writer")
end