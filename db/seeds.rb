# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

idea = Ideas.new
idea.title = "Titulo da ideia"
idea.description = "Uma descrisão basica para a ideia"
idea.idea = "Aqui ficara toda a ideia do projeto, não tem limite de caracteres, pode ser inserido links, nomes, etc."
idea.contact = "12 9 83012256"
idea.link_project = "http://www.linkDoProjeto.com/"
idea.idealizer = "Leonardo Camp"
idea.like = 10
idea.nlike = 2
idea.employees = ""
idea.link_employees = ""
idea.save

idea = Ideas.new
idea.title = "Titulo da ideia"
idea.description = "Uma descrisão basica para a ideia"
idea.idea = "Aqui ficara toda a ideia do projeto, não tem limite de caracteres, pode ser inserido links, nomes, etc."
idea.contact = "12 9 83012256"
idea.link_project = "http://www.linkDoProjeto.com/"
idea.idealizer = "Neko Chan"
idea.like = 80
idea.nlike = 0
idea.employees = ""
idea.link_employees = ""
idea.save

idea = Ideas.new
idea.title = "Titulo da ideia"
idea.description = "Uma descrisão basica para a ideia"
idea.idea = "Aqui ficara toda a ideia do projeto, não tem limite de caracteres, pode ser inserido links, nomes, etc."
idea.contact = "12 9 83012256"
idea.link_project = "http://www.linkDoProjeto.com/"
idea.idealizer = "Fulano de tal"
idea.like = 34
idea.nlike = 20
idea.employees = ""
idea.link_employees = ""
idea.save

idea = Ideas.new
idea.title = "Titulo da ideia"
idea.description = "Uma descrisão basica para a ideia"
idea.idea = "Aqui ficara toda a ideia do projeto, não tem limite de caracteres, pode ser inserido links, nomes, etc."
idea.contact = "12 9 83012256"
idea.link_project = "http://www.linkDoProjeto.com/"
idea.idealizer = "Fulano do bananal"
idea.like = 34
idea.nlike = 2
idea.employees = ""
idea.link_employees = ""
idea.save