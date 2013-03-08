Gem::Specification.new do |s|
	s.name         = "nice_nodes"
	s.summary      = "Little helpers for using Neo4j with Rails."
	s.description  = "nice_nodes provides 'Model' and 'Relationship' helpers to make developing Neo4j with Rails more enjoyable."
	s.version      = "1.0.0.pre"
	s.authors      = "Ethan Stillman"
	s.email        = "ehs.stillman@gmail.com"
	s.homepage     = "http://github.com/estill01/nice_nodes"
	s.files        = ["lib/nice_nodes.rb"]

	s.add_dependency("neo4j", "~> 2.0")
end
