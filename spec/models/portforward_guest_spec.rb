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

# Unit tests for VMWareFusionClient::PortforwardGuest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PortforwardGuest' do
  before do
    # run before each test
    @instance = VMWareFusionClient::PortforwardGuest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PortforwardGuest' do
    it 'should create an instance of PortforwardGuest' do
      expect(@instance).to be_instance_of(VMWareFusionClient::PortforwardGuest)
    end
  end
  describe 'test attribute "ip"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "port"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
