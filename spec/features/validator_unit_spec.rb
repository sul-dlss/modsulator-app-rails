# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Validator do
  let(:service_path) { Rails.root.join('app', 'services') }

  describe 'initialize' do
    it 'validates a valid XML file using the internal XML Schema Definition file' do
      # Nokogiri won't load the imported schema unless we explicitly set the current dir.
      # This only seems to be a problem from within RSpec, though.
      Dir.chdir(service_path) do
        validator = described_class.new('modsulator.xsd')
        error_list = validator.validate_xml_string(File.read(File.join(FIXTURES_DIR, 'crowdsourcing_bridget_1.xml')))
        expect(error_list).to be_empty
      end
    end

    it 'lists errors for an invalid XML file using the internal XML Schema Definition file' do
      Dir.chdir(service_path) do
        validator = described_class.new('modsulator.xsd')
        error_list = validator.validate_xml_string(File.read(File.join(FIXTURES_DIR, 'invalid_crowdsourcing_bridget_1.xml')))
        expect(error_list.length).to eq(2)
      end
    end

    it 'validates a valid XML file by automatically picking up the internal XML Schema Definition file' do
      # Nokogiri won't load the imported schema unless we explicitly set the current dir.
      # This only seems to be a problem from within RSpec, though.
      Dir.chdir(service_path) do
        validator = described_class.new
        error_list = validator.validate_xml_string(File.read(File.join(FIXTURES_DIR, 'crowdsourcing_bridget_1.xml')))
        expect(error_list).to be_empty
      end
    end

    it 'lists errors for an invalid XML file when automatically picking up the internal XML Schema Definition file' do
      Dir.chdir(service_path) do
        validator = described_class.new('modsulator.xsd')
        error_list = validator.validate_xml_string(File.read(File.join(FIXTURES_DIR, 'invalid_crowdsourcing_bridget_1.xml')))
        expect(error_list.length).to eq(2)
      end
    end
  end
end
