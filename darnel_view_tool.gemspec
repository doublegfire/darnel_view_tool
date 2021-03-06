
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "darnel_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "darnel_view_tool"
  spec.version       = DarnelViewTool::VERSION
  spec.authors       = ["doubleg"]
  spec.email         = ["darnel_free@yahoo.com"]


  spec.summary       = %q{various view specfic methods for application I use.}

  spec.summary       = %q{Various view specfic methods for application I use.}

  spec.description   = %q{generate HTML data for  application.}
  spec.homepage      = "https://guinelgue.com"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
