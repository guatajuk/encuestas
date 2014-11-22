class LoadUserController < ApplicationController
	respond_to :html, :xml, :json


	def index
	end

	def load_data
		id = params[:user_id]
		if id.to_i != 0
			json = create_student (id)
			if json != nil
				@user = User.create(name: json["nom_estudiante"], email: json["cod_estudiante"]+"@seu.com", password: json["cod_estudiante"], id_number: json["cod_estudiante"])
				@user.add_role "Student"
			else
				puts "ERROR"
			end
		else
			@user = nil
		end
		@user
	end

	def create_student (id)
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
			json_S = json_S + "\"nom_materia\": \""+noko_doc.xpath("//NOM_MATERIA")[index].text.upcase+"\",\n"
			json_S = json_S + "\"cod_materia\": \""+noko_doc.xpath("//COD_MATERIA")[index].text.upcase+"\",\n"
			json_S = json_S + "\"nom_facultad\": \""+noko_doc.xpath("//NOM_FACULTAD")[index].text.upcase+"\",\n"
			json_S = json_S + "\"cod_facultad\": \""+noko_doc.xpath("//COD_FACULTAD")[index].text.upcase+"\",\n"
			json_S = json_S + "\"grupo\": \""+noko_doc.xpath("//GRUPO")[index].text.upcase+"\",\n"
			json_S = json_S + "\"periodo\": \""+noko_doc.xpath("//PERIODO")[index].text.upcase+"\",\n"
			json_S = json_S + "\"ano\": \""+noko_doc.xpath("//ANO")[index].text.upcase+"\",\n"
			json_S = json_S + "\"nom_profesor\": \""+noko_doc.xpath("//NOM_PROFESOR")[index].text.upcase+"\",\n"
			json_S = json_S + "\"cod_profesor\": \""+noko_doc.xpath("//COD_PROFESOR")[index].text.upcase+"\"\n"
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