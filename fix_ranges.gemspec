require 'rake/gempackagetask'

NAME="fix_ranges"

spec = Gem::Specification.new do |s|
   s.name         = NAME
   s.version      = '0.0.1'
   s.platform     = Gem::Platform::RUBY
   s.summary      = 'No longer have to call to_a when using ranges with anything other then .each'
   s.homepage     = "http://amaras-tech.co.uk/software/#{NAME}"
   s.authors      = "Morgan Prior"
   s.email        = "#{NAME}_gem@amaras-tech.co.uk"
   s.description  =  "fix_ranges auto converts Range to an Array if the method exists for an array." +
                     "This allows (0..9).reverse.each and (1..9).reverse_each methods to work directly."
   s.files        = ["lib/#{NAME}.rb", "spec/spec_#{NAME}.rb"]
   #s.bindir       = 'bin'   
   #s.executables  = ['my_gem']
   s.has_rdoc     = false

end
Rake::GemPackageTask.new(spec).define
