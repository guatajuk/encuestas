class LoadUserController < ApplicationController
  respond_to :html, :xml, :json
	
	def index
	end

	def load_data
		id = params[:user_id]
		if id.to_i != 0
			json = create_json (id)
			if json != nil
				if !User.where(id_number: json["cod_estudiante"]).exists?
					10.times { puts "" }
					@user = User.create(name: json["nom_estudiante"], email: json["cod_estudiante"]+"@seu.com", password: json["cod_estudiante"], id_number: json["cod_estudiante"])
					@user.add_role "Student"
					json["materias"].each do |mat|
						if !User.where(id_number: mat["cod_profesor"]).exists?
							user = User.create(name: mat["nom_profesor"], email: mat["cod_profesor"]+"@seu.com", password: mat["cod_profesor"], id_number: mat["cod_profesor"])
							user.add_role "Teacher"
						end
						if !Course.where(course_id: mat["cod_materia"], gruop: mat["grupo"]).exists?
							Course.create(name: mat["nom_materia"], course_id: mat["cod_materia"], group: mat["grupo"], faculty: mat["nom_facultad"], year: mat["ano"], semester: mat["periodo"])
						end
						if !Course.where(course_id: mat["cod_materia"], user_ids: @user.id_number).exists?
							Course.where(course_id: mat["cod_materia"]).push(user_ids: @user.id)
						end
						if !Course.where(course_id: mat["cod_materia"], user_ids: mat["cod_profesor"]).exists?
							Course.where(course_id: mat["cod_materia"]).push(user_ids: JSON.parse(User.where(id_number: mat["cod_profesor"]).to_json)[0]["_id"]["$oid"])
						end
					end
				else
					#Ya existe el estudiante en la base de datos
					@user = nil
				end
			else 
				#El codigo no corresponde a un estudiante en la base de datos				
				@user = nil
			end
		else
			#Se ingresó un código inválido
			@user = nil 
		end 
		@user
	end

	def create_json (id)
  	client = Savon.client(wsdl: ENV["WEB_SERVICE"])
  	response = client.call(:get_estudiante_clases, message: {codigo: id})
  	noko_doc = Nokogiri::XML(response.to_s)
  	if noko_doc.at_xpath("//NOM_ESTUDIANTE") != nil	  	
	  	json_S = ""
	  	json_S = json_S + "{\n"
	  	json_S = json_S + "\"nom_estudiante\": \""+noko_doc.at_xpath("//NOM_ESTUDIANTE").text.upcase+"\",\n"
	  	json_S = json_S + "\"cod_estudiante\": \""+noko_doc.at_xpath("//COD_ESTUDIANTE").text.upcase+"\",\n"
	  	json_S = json_S + "\"materias\": [\n"
			for index in 0 ... noko_doc.xpath("//NOM_MATERIA").size-1
				json_S = json_S + "{\n"
				json_S = json_S + "\"nom_materia\": \""+noko_doc.xpath("//NOM_MATERIA")[index].text.upcase+"\",\n"
				json_S = json_S + "\"cod_materia\": \""+noko_doc.xpath("//COD_MATERIA")[index].text.upcase+"\",\n"
				json_S = json_S + "\"nom_facultad\": \""+noko_doc.xpath("//NOM_FACULTAD")[index].text.upcase+"\",\n"
				json_S = json_S + "\"cod_facultad\": \""+noko_doc.xpath("//COD_FACULTAD")[index].text.upcase+"\",\n"
				json_S = json_S + "\"grupo\": \""+noko_doc.xpath("//GRUPO")[index].text.upcase+"\",\n"
				json_S = json_S + "\"periodo\": \""+noko_doc.xpath("//PERIODO")[index].text.upcase+"\",\n"
				json_S = json_S + "\"ano\": \""+noko_doc.xpath("//ANO")[index].text.upcase+"\",\n"
				json_S = json_S + "\"nom_profesor\": \""+noko_doc.xpath("//NOM_PROFESOR")[index].text.upcase+"\",\n"
				json_S = json_S + "\"cod_profesor\": \""+noko_doc.xpath("//COD_PROFESOR")[index].text.upcase+"\"\n"
	  		json_S = json_S + "},\n"
			end
			json_S = json_S + "{\n"
			json_S = json_S + "\"nom_materia\": \""+noko_doc.xpath("//NOM_MATERIA")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\",\n"
			json_S = json_S + "\"cod_materia\": \""+noko_doc.xpath("//COD_MATERIA")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\",\n"
			json_S = json_S + "\"nom_facultad\": \""+noko_doc.xpath("//NOM_FACULTAD")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\",\n"
			json_S = json_S + "\"cod_facultad\": \""+noko_doc.xpath("//COD_FACULTAD")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\",\n"
			json_S = json_S + "\"grupo\": \""+noko_doc.xpath("//GRUPO")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\",\n"
			json_S = json_S + "\"periodo\": \""+noko_doc.xpath("//PERIODO")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\",\n"
			json_S = json_S + "\"ano\": \""+noko_doc.xpath("//ANO")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\",\n"
			json_S = json_S + "\"nom_profesor\": \""+noko_doc.xpath("//NOM_PROFESOR")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\",\n"
			json_S = json_S + "\"cod_profesor\": \""+noko_doc.xpath("//COD_PROFESOR")[noko_doc.xpath("//NOM_MATERIA").size-1].text.upcase+"\"\n"
			json_S = json_S + "}\n"
			json_S = json_S + "]\n"
			json_S = json_S + "}\n"
			json = JSON.parse(json_S)
		else
			json = nil
		end
		puts json
		json
	end
end