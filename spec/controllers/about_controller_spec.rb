require 'spec_helper'
require 'rails_helper'

RSpec.describe AboutController, type: :controller do

  describe 'GET #index' do
    it 'handles simple ping requests to /about' do
      get :index
      expect(response).to have_http_status(:success)
      expected_version = File.read(File.expand_path('../../../VERSION', __FILE__))
      expect(response.body).to eq(String.new('modsulator-api version ' + expected_version))
    end
  end
end
