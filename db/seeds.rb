# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

10.times do
    Bag.create(name: Faker::Creature::Animal.name)
end

CSV.foreach(Rails.root.join('lib/seeds/discs.csv'), headers: true) do |row|
    # Disc.create({
    #     brand: row['brand'],
    #     disc_name: row['disc_name'],
    #     speed: row['speed'],
    #     glide: row['glide'],
    #     turn: row['turn'],
    #     fade: row['fade']
    # })
    Disc.create!(row.to_hash)
end


puts "There are now #{Disc.count} rows in the disc table"