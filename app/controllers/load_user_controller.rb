class LoadUserController < ApplicationController
	respond_to :html, :xml, :json

	def index
	end

	def load_data
		id = params[:user_id]
		if id.to_i != 0
			@user = User.create(name: "Ghoul_1", password:"123123123", email: "ghoul1@seu.com", id_number: id)
			@user.add_role "Student"
		else
			@user = nil
		end
		@user
	end

	def create_student (id)
  	client = Savon.client(wsdl: ENV[WE_SERVICE])
  	response = client.call(:get_estudiante_clases, message: {codigo: id})
  	noko_doc = Nokogiri::XML(response.to_s)
  	cod_materia = noko_doc.xpath("//COD_MATERIA")
  	cod_estudiante = noko_doc.xpath("//COD_ESTUDIANTE")
  	nom_estudiante = noko_doc.xpath("//NOM_ESTUDIANTE")
  	nom_materia = noko_doc.xpath("//NOM_MATERIA")
  	grupo = noko_doc.xpath("//GRUPO")
  	ano = noko_doc.xpath("//ANO")
  	periodo = noko_doc.xpath("//PERIODO")
  	cod_profesor = noko_doc.xpath("//COD_PROFESOR")
  	nom_profesor = noko_doc.xpath("//NOM_PROFESOR")
  	cod_depto = noko_doc.xpath("//COD_DEPTO")
  	nom_depto = noko_doc.xpath("//NOM_DEPTO")
  	cod_facultad = noko_doc.xpath("//COD_FACULTAD")
  	nom_facultad = noko_doc.xpath("//NOM_FACULTAD")
  	
  	json_S = ""
  	json_S = json_S + "{\n"
  	json_S = json_S + "\"nom_estudiante\": \""+nom_estudiante[0].to_s[16..nom_estudiante[0].to_s.size-18]+"\",\n"
  	json_S = json_S + "\"cod_estudiante\": \""+cod_estudiante[0].to_s[16..cod_estudiante[0].to_s.size-18]+"\",\n"
  	json_S = json_S + "\"materias\": [\n"
		for index in 0 ... nom_materia.size-1
			json_S = json_S + "{\n"
			json_S = json_S + "\"nom_materia\": \""+nom_materia[index].to_s[13..nom_materia[index].to_s.size-15]+"\",\n"
			json_S = json_S + "\"cod_materia\": \""+cod_materia[index].to_s[13..cod_materia[index].to_s.size-15]+"\",\n"
			json_S = json_S + "\"nom_facultad\": \""+nom_facultad[index].to_s[14..nom_facultad[index].to_s.size-16]+"\",\n"
			json_S = json_S + "\"cod_facultad\": \""+cod_facultad[index].to_s[14..cod_facultad[index].to_s.size-16]+"\",\n"
			json_S = json_S + "\"grupo\": \""+grupo[index].to_s[7..grupo[index].to_s.size-9]+"\",\n"
			json_S = json_S + "\"periodo\": \""+periodo[index].to_s[9..periodo[index].to_s.size-11]+"\",\n"
			json_S = json_S + "\"ano\": \""+ano[index].to_s[5..ano[index].to_s.size-7]+"\",\n"
			json_S = json_S + "\"nom_gdocente\": \""+nom_profesor[index].to_s[14..nom_profesor[index].to_s.size-16]+"\",\n"
			json_S = json_S + "\"cod_docente\": \""+cod_profesor[index].to_s[14..cod_profesor[index].to_s.size-16]+"\"\n"
  		json_S = json_S + "},\n"
		end
		json_S = json_S + "{\n"
		json_S = json_S + "\"nom_materia\": \""+nom_materia[nom_materia.size-1].to_s[13..nom_materia[nom_materia.size-1].to_s.size-15]+"\",\n"
		json_S = json_S + "\"cod_materia\": \""+cod_materia[nom_materia.size-1].to_s[13..cod_materia[nom_materia.size-1].to_s.size-15]+"\",\n"
		json_S = json_S + "\"nom_facultad\": \""+nom_facultad[nom_materia.size-1].to_s[14..nom_facultad[nom_materia.size-1].to_s.size-16]+"\",\n"
		json_S = json_S + "\"cod_facultad\": \""+cod_facultad[nom_materia.size-1].to_s[14..cod_facultad[nom_materia.size-1].to_s.size-16]+"\",\n"
		json_S = json_S + "\"grupo\": \""+grupo[nom_materia.size-1].to_s[7..grupo[nom_materia.size-1].to_s.size-9]+"\",\n"
		json_S = json_S + "\"periodo\": \""+periodo[nom_materia.size-1].to_s[9..periodo[nom_materia.size-1].to_s.size-11]+"\",\n"
		json_S = json_S + "\"ano\": \""+ano[nom_materia.size-1].to_s[5..ano[nom_materia.size-1].to_s.size-7]+"\",\n"
		json_S = json_S + "\"nom_docente\": \""+nom_profesor[nom_materia.size-1].to_s[14..nom_profesor[nom_materia.size-1].to_s.size-16]+"\",\n"
		json_S = json_S + "\"cod_docente\": \""+cod_profesor[nom_materia.size-1].to_s[14..cod_profesor[nom_materia.size-1].to_s.size-16]+"\"\n"
		json_S = json_S + "}\n"
		json_S = json_S + "]\n"
		json_S = json_S + "}\n"
		json = JSON.parse(json_S)
		json
	end
	
end