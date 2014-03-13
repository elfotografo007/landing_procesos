# -*- coding: utf-8 -*-
#Crear Administradores 
torres = Administrador.new(email: "andres.torres@ehmsoft.com")
torres.password = "12345678"
torres.save!

harold = Administrador.new(email: "harold.sanchez@ehmsoft.com")
harold.password = "12345678"
harold.save!

esteban = Administrador.new(email: "esteban.santa@ehmsoft.com")
esteban.password = "12345678"
esteban.save!

luisa = Administrador.new(email: "luisa.arrubla@ehmsoft.com")
luisa.password = "12345678"
luisa.save!