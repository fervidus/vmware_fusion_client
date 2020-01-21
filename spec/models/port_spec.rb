=begin
#VMware Fusion API 1.2.0

#REST API Explorer

OpenAPI spec version: 1.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VMWareFusionClient::Port
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Port' do
  before do
    # run before each test
    @instance = VMWareFusionClient::Port.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Port' do
    it 'should create an instance of Port' do
      expect(@instance).to be_instance_of(VMWareFusionClient::Port)
    end
  end
end