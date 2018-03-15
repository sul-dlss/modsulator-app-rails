class NormalizerController < ApplicationController
  # This is an API, so CSRF token verification doesn't apply
  skip_before_action :verify_authenticity_token

  def create
    input_file = File.open(File.new(params[:file].tempfile))
    xml = input_file.read
    input_file.close
    normalizer = Normalizer.new
    render xml: normalizer.normalize_xml_string(xml)
  end
end
