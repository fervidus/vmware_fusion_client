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

# Unit tests for VMWareFusionClient::VMCPU
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VMCPU' do
  before do
    # run before each test
    @instance = VMWareFusionClient::VMCPU.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VMCPU' do
    it 'should create an instance of VMCPU' do
      expect(@instance).to be_instance_of(VMWareFusionClient::VMCPU)
    end
  end
  describe 'test attribute "processors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
