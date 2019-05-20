# frozen_string_literal: true

class ModsulatorController < ApplicationController
  def create
    mods_converter = Modsulator.new(File.new(params[:file].tempfile), params[:filename])
    render xml: mods_converter.convert_rows
  end

  def version
    render plain: '2.0.0'
  end
end
