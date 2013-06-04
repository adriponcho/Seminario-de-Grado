require 'spec_helper'
require './app/models/criterio'
require 'active_record'

describe Criterio do
	it "Deberia recuperar el nombre de un criterio creado" do
		criterio = Criterio.new
		criterio = Criterio.create!(nombre: "criterio1", tipo: "tipo1", estado: true, descripcion: 'descripcion')
		expect(criterio.nombre).to eq("criterio1")
	end

	it "Deberia recuperar el tipo de un criterio creado" do
		criterio = Criterio.new
		criterio = Criterio.create!(nombre: "criterio1", tipo: "tipo1", estado: true, descripcion: 'descripcion')
		expect(criterio.tipo).to eq("tipo1")
	end

	it "Deberia recuperar el estado de un criterio creado" do
		criterio = Criterio.new
		criterio = Criterio.create!(nombre: "criterio1", tipo: "tipo1", estado: true, descripcion: 'descripcion')
		expect(criterio.estado).to eq(true)
	end

	it "Deberia recuperar la descripcion de un criterio creado" do
		criterio = Criterio.new
		criterio = Criterio.create!(nombre: "criterio1", tipo: "tipo1", estado: true, descripcion: 'descripcion')
		expect(criterio.descripcion).to eq("descripcion")
	end
end