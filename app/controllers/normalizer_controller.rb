# frozen_string_literal: true

class NormalizerController < ApplicationController
  def create
    input_file = File.open(File.new(params[:file].tempfile))
    xml = input_file.read
    input_file.close
    normalizer = Stanford::Mods::Normalizer.new
    render xml: normalizer.normalize_xml_string(xml)
  end
end
