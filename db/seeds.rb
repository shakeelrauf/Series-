# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'    

file = File.join(Rails.root, 'app', 'csv_data', 'tv_series.csv')
csv_text = File.read(file)
csv = CSV.parse(csv_text, :headers => true)
if csv.count > SerieDatum.count
	csv.each do |row|
		ts = TvSerial.find_or_initialize_by(name: row["TV Series"])
		ts.save! if !ts.present?
		dtt = ts.serie_data.build
		dtt.genre = row["Genre"]
		dtt.number_of_seasons = row["No of seasons"]
		dtt.date_of_first_release = row["Date of First Release"]
		dtt.director = row["Director"]
		dtt.actor = row["Actor"]
		dtt.shoot_location = row["Shoot location"]
		dtt.country = row["Country"]
		dtt.save!
	end
end


file = File.join(Rails.root, 'app', 'csv_data', 'reviews.csv')
csv_text = File.read(file)
csv = CSV.parse(csv_text, :headers => true)
if csv.count > Review.count
	csv.each do |row|
		ts = TvSerial.find_or_initialize_by(name: row["TV Series"])
		ts.save! if !ts.present?
		review = ts.reviews.build
		review.user = row["User"]
		review.stars = row["Stars"]
		review.review = row["Review"]
		review.save!
	end
end