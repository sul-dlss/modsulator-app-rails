# frozen_string_literal: true

# Validates XML against the MODSulator schema.
class Validator
  # The Nokogiri::XML::Schema instance used for validation.
  attr_reader :schema

  # Creates a new Validator, using either a provided XML Schema file or the built-in one.
  # @param schema_file  Full path to the desired .xsd file. If none is given, the built-in file will be used.
  def initialize(schema_file = nil)
    schema_file ||= File.expand_path('modsulator.xsd', __dir__)

    @schema = Nokogiri::XML::Schema(File.open(schema_file))
  end

  # Validates an XML string.
  #
  # @param xml   An XML document as a string.
  # @return      An array containing holds Nokogiri::XML::SyntaxError elements. If this array has length zero, the document is valid.
  def validate_xml_string(xml)
    xml_doc = Nokogiri::XML(xml)
    validate_xml_doc(xml_doc)
  end

  # Validates an XML document.
  #
  # @param doc   An instance of Nokogiri::XML::Document
  # @return      An array containing holds Nokogiri::XML::SyntaxError elements. If this array has length zero, the document is valid.
  def validate_xml_doc(doc)
    return doc.errors unless doc.errors.empty?

    @schema.validate(doc)
  end
end
