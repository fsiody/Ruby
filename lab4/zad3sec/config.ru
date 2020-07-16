require './aplikacja_sinatra'
require './form'

#use Rack::Reloader, 0 # Użyj aplikacji pośredniczącej 'Rack::Reloader' - http://www.rubydoc.info/gems/rack/Rack/Reloader
use Form, ['Lena', 'Obertynska']
run HelloWorld.new    # Utwórz instancję aplikacji 'HelloWorld', a następnie uruchom serwer Rack-owy

# Więcej informacji na temat pliku '.ru' znajdziesz na stronie https://github.com/rack/rack/wiki/%28tutorial%29-rackup-howto
