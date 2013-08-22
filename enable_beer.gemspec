Gem::Specification.new do |s|
  s.name        = 'enable_beer'
  s.version     = '1.0.2'
  s.date        = '2013-08-22'
  s.summary     = "Beer enabler"
  s.description = "Enable_beer backs up your private git repo's to dropbox so you can save money and buy beers instead. "
  s.authors     = ["Emile Bosch"]
  s.email       = 'emilebosch@me.com'
  s.files       = ["lib/enable_beer.rb"]
  s.add_dependency('github_api', '~> 0.10')
  s.homepage    = 'https://github.com/emilebosch/enable_beer'
  s.license     = 'MIT'
  s.executables << 'enable_beer'
end