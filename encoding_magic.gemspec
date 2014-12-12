Gem::Specification.new do |s|
  s.name = %q{encoding_magic}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Manuel Ryan", "Pokka"]
  s.date = %q{2014-12-12}
  s.default_executable = %q{encoding_magic}
  s.email = ["ifunafu@gmail.com"]
  s.executables = ["encoding_magic"]
  s.files = Dir.glob("{bin,lib}/**/*") + %w(README.md CHANGELOG LICENCE)
  s.homepage = %q{https://github.com/pokka/encoding_magic}
  s.require_paths = ["lib"]
  s.summary = %q{Easily strip magic comments for encoding on multiple ruby source files}
  s.license = "Woody Guthrie free culture"

end
