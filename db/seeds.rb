# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


j = Job.new
j.job_title = "Ruby on Rails Developer"
j.company = "Pivotal Labs"
j.application_date = "06/10/2012"
j.response = "Yes - Scheduled Phone Interview"
j.phone = 5555555555
j.email = "hr@pivotallabs.com"
j.website = "http://pivotallabs.com"
j.blog = "http://pivotallabs.com/blabs"
j.job_board = "http://pivotallabs.com/jobs/welcome"
j.notes = "Scheduled phone interview for June 17, 2012"
j.save

j = Job.new
j.job_title = "Jr. Ruby on Rails Developer"
j.company = "Nova Fabrica"
j.application_date = "06/10/2012"
j.response = "No"
j.phone = 5555555555
j.email = "hr@novafabrica.com"
j.website = "http://novafabrica.com/"
j.blog = ""
j.job_board = ""
j.notes = ""
j.save

j = Job.new
j.job_title = "Ruby on Rails Development Apprentice"
j.company = "Hash Rocket"
j.application_date = "06/10/2012"
j.response = "Yes"
j.phone = 5555555555
j.email = "hr@hashrocket.com"
j.website = "http://hashrocket.com/"
j.blog = "http://hashrocket.com/blog"
j.job_board = "http://hashrocket.com/jobs"
j.notes = "Scheduled interview for June 20, 2012 @10:00 am"
j.save

