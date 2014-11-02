$:.push File.expand_path("../lib", __FILE__)

require "less/rails/fontawesome/version"

Gem::Specification.new do |s|
  s.name        = "less-rails-fontawesome"
  s.version     = Less::Rails::Fontawesome::VERSION
  s.authors     = ["Wlodek Bzyl"]
  s.email       = ["matwb@ug.edu.pl"]
  s.homepage    = "https://github.com/wbzyl/less-rails-fontawesome"
  s.summary     = %q{Font Awesome in LESS for Rails Asset Pipeline}
  s.description = %q{Font Awesome, LESS version, with assets pipeline for Rails Asset Pipeline}

  s.rubyforge_project = "less-rails-fontawesome"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'less-rails', '~> 2.5.0'

  s.licenses = ['MIT']
end
