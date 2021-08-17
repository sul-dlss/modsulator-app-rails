# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Modsulator do
  describe 'generates and validates' do
    {
      'Fitch_Chavez.xlsx' => 'Fitch_Chavez.xml',
      'Fitch_King.xlsx' => 'Fitch_King.xml',
      'M1463_AV_manifest.xlsx' => 'M1463_AV_manifest.xml',
      'Matter_manifest.csv' => 'Matter_manifest.xml',
      'PosadaSpreadsheet.xlsx' => 'PosadaSpreadsheet.xml',
      'ars0056_manifest.csv' => 'ars0056_manifest.xml',
      'manifest_v0174.csv' => 'manifest_v0174.xml',
      'crowdsourcing_bridget_1.xlsx' => 'crowdsourcing_bridget_1.xml',
      'crowdsourcing_bridget_2.xlsx' => 'crowdsourcing_bridget_2.xml',
      'Heckrotte_ChartsOfCoastSurvey.xlsx' => 'Heckrotte_ChartsOfCoastSurvey.xml',
      'edition_physLoc_intmediatype.xlsx' => 'edition_physLoc_intmediatype.xml',
      'filled_template_20160711.xlsx' => 'filled_template_20160711.xml',
      'location_url.xlsx' => 'location_url.xml',
      'point_coord_test.xlsx' => 'point_coord_test.xml',
      '20190207_language.csv' => '20190207_language.xml',
      '20190207_name.csv' => '20190207_name.xml',
      '20190207_related.csv' => '20190207_related.xml',
      '20190207_subject_temporal.csv' => '20190207_subject_temporal.xml',
      '20190207_title.csv' => '20190207_title.xml',
      '20190207_type_genre.csv' => '20190207_type_genre.xml',
      'opp_city_2019.csv' => 'opp_city_2019.xml',
      'origin-info-update.xlsx' => 'origin-info-update.xml',
      'relatedItem_otherType.xlsx' => 'relatedItem_otherType.xml'
    }.each do |testfile, results_file|
      generated_xml_string = Modsulator.new(File.join(FIXTURES_DIR, testfile), testfile).convert_rows

      it "converts #{testfile} to valid XML" do
        error_list = Validator.new(Rails.root.join('app', 'services', 'modsulator.xsd')).validate_xml_string(generated_xml_string)
        expect(error_list.length).to eq(0)
      end
      it "generates same XML from #{testfile} as previous modsulator version" do
        generated_xml = Nokogiri::XML(generated_xml_string)
        expected_xml = Nokogiri::XML(File.read(File.join(FIXTURES_DIR, results_file)))
        expect(generated_xml).to be_equivalent_to(expected_xml).ignoring_attr_values('datetime', 'version', 'schemaLocation')
      end
    end
  end
end
