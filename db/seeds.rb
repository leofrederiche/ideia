# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

leo = User.create
leo.name = "Leonardo"
leo.last_name = "Camp"
leo.age = 16
leo.web_site = "www.meulivro.tk"
leo.contact = "leofrederiche@gmail.com"
leo.email = "leofrederiche@gmail.com"
leo.password = "31011996"
leo.save

ana = User.create
ana.name = "Ana"
ana.last_name = "Helena"
ana.age = 12
ana.web_site = "-"
ana.contact = "anahelena@hotmail.com"
ana.email = "anahelena@hotmail.com"
ana.password = "31011996"
ana.save
