$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your wagon's version:
require 'hitobito_bdp/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  # rubocop:disable SingleSpaceBeforeFirstArg
  s.name        = 'hitobito_bdp'
  s.version     = HitobitoBdp::VERSION
  s.authors     = ['Bund der Pfadfinderinnen und Pfadfinder e.V.']
  s.email       = ['mitglied@pfadfinden.de']
  s.homepage    = 'https://www.meinbdp.de'
  s.summary     = 'BdP Waggon'
  s.description = 'Mitgliederverwaltung Hitobito - Bund der Pfadfinderinnen und Pfadfinder'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['Rakefile']
  s.test_files = Dir['test/**/*']
  # rubocop:enable SingleSpaceBeforeFirstArg
end
