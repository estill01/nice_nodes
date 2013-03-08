# nice_nodes.rb
require 'neo4j'

class Model < Neo4j::Rails::Model
  include Neo4j::Rails::Versioning
  property :created_at
  property :updated_at
end

class Relationship < Neo4j::Rails::Relationship
  property :created_at
  property :updated_at
end

M, R = Model, Relationship
Rel = Relationship  

# -----------------------------------------------------------------------------------
#
# 'agendo_neo4j_rails_helpers.rb'
# Pre-configured 'Model' and 'Relationship' base objects.
#
# Inherit from 'Model' or 'Relationship' instead of Neo4j::Rails::Model/Relationship
# %w(Model Relationship).each do |type|
#   klass = "Neo4j::Rails::#{type}".constantize
#   Object.const_set(type, Class.new(klass) do
#     include ActiveModel::ForbiddenAttributesProtection
#     property :created_at
#     property :updated_at
#   end)
# end
#
# class Controller < ApplicationController
#   private
#   # Controllers auto-do the pre-configuered strong parameters 
#   def self.inherited(subclass)
#     subklass = subclass.to_s.gsub("Controller","").downcase
#     method = subklass + "_param"
#     subklass.constantize.send(:define_method, method.to_sym) do |m| 
#       params.require(subklass.to_sym).permit!      
#     end
# 
#     # TODO: include override guidance via commented code injection
#   end
# end
#
# -----------------------------------------------------------------------------------
