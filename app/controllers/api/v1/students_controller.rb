module Api
	module V1
		class StudentsController < ApplicationController
      			
      # Listar todos os estudantes
			def index
				students = Student.order('id ASC');
				render json: {status: 'SUCCESSO', message:'Lista de estudantes carregada.', data:students},status: :ok
      end
      
      # Listar estudante passando ID
			def show
        student = Student.find(params[:id])
				render json: {status: 'SUCCESSO', message:'Dados do estudante carregados.', data:student},status: :ok
      end
      
			# Criar um novo estudante
			def create
				student = Student.new(student_params)
				if student.save
					render json: {status: 'SUCCESSO', message:'Estudante Cadastrado.', data:student},status: :ok
				else
					render json: {status: 'ERRO', message:'Estudante Não Cadastrado.', data:student.errors},status: :unprocessable_entity
				end
      end
      
			# Verifica se os parâmetros foram aceitos
			private
			def student_params
				params.permit(:nome, :cpf, :data_nasc, :phone, :genero, :meio_pagamento)
      end
		end
	end
end