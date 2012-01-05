Gem::Specification.new do |s|
  s.name = 'acts_as_visitable'
  s.version = '1.0.0'
  s.author = 'Taylor Redden'
  s.email = 'developers@consoloservices.com'
  s.summary = 'Acts As Visitable'
  s.description = 'Library for handling clinical visits with active record'
  s.homepage = 'https://redmine.consoloservices.com'
  s.require_path = '.'
  s.files = [ 'acts_as_visitable.rb' ]
  s.add_dependency 'activerecord', '~> 2.3'
end
