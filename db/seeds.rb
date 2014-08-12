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

idea_leo = Ideas.create
idea_leo.title = "Meu livro WebApp"
idea_leo.description = "Meu Livro é um WebApp para armazenamento de texto online sem dificuldades ou atrasos."
idea_leo.idea = "A principal Idéia do MEULIVRO é trazer facilidade ao compartilhar um texto online, ou apenas 
guardar um simples texto de forma simples e sem complicações. O App funciona em qualquer aparelho com acesso a internet."
idea_leo.contact = "leofrederiche@gmail.com"
idea_leo.link_project = "http://www.meulivro.tk/"
idea_leo.idealizer = 1
idea_leo.save

/ votação de leo / 
votation_idea_leo = Votation.create
votation_idea_leo.idea_id = 1
votation_idea_leo.user_id = 1
votation_idea_leo.like = true
votation_idea_leo.save

/ votacao de ana /

votation_idea_leo = Votation.create
votation_idea_leo.idea_id = 2
votation_idea_leo.user_id = 1
votation_idea_leo.like = true
votation_idea_leo.save
