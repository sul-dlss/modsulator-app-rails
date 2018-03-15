class ModsulatorController < ApplicationController
  # This is an API, so CSRF token verification doesn't apply
  skip_before_action :verify_authenticity_token

  def create
    mods_converter = Modsulator.new(File.new(params[:file].tempfile), params[:filename])
    render xml: mods_converter.convert_rows()
  end

  def version
    render plain: Gem.loaded_specs['modsulator'].version.version
  end
end
