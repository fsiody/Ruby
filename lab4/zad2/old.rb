require 'pp' if RUBY_VERSION < '2.5'
class HelloWorld
  def call(env)

    response = Rack::Response.new
    if env['REQUEST_URI'] =~ /favicon.ico/
      response.status = Rack::Utils::SYMBOL_TO_STATUS_CODE[:not_found] # Ustaw kod statusu (odpowiedzi) na 404
      response.header['Content-Type'] = 'text/plain'                   # Umieść, w nagłówku odpowiedzi, informację, że wysyłane dane będą zwykłym tekstem
      response.write 'The requested resource does not exist'           # Umieść, w ciele odpowiedzi, podany tekst
      response.write "\n"                                              # Metodę 'write()' można uruchamiać wielokrotnie, ... dopóki nie wywołasz 'finish()'
      return response.finish                                           # Nagłówki oraz ciało odpowiedzi są gotowe - wyślij odpowiedź
    end

    # To co powyżej, można zapisać następująco:
    # return [404, {'Content-Type' => 'text/plain'}, ["The requested resource does not exist\n"]] if env['REQUEST_URI'] =~ /favicon.ico/

    ##########################################################
    # Obsługa żądania pobrania plików innych niż 'favicon.ico'
    ##########################################################

    puts '*' * 25
    puts "* \e[31mZawartość hasza 'env'\e[0m *"
    puts '*' * 25
    pp env.dup.tap { |key| key.delete('puma.config') }
    request = Rack::Request.new(env)
    puts '*' * 36
    puts "* \e[31mZawartość hasza 'request.params'\e[0m *"
    puts '*' * 36

    p request.params

    puts '*' * 80
    response.status = Rack::Utils::SYMBOL_TO_STATUS_CODE[:ok] # Ustaw kod statusu na 200. Zbędne, gdyż 200, to wartość domyślna własności 'status'; potrzebne do celów edukacyjnych ;-)
    response.header['Content-Type'] = 'text/html'             # Umieść, w nagłówku odpowiedzi, informację, że wysyłane dane będą HTML-em
    response.write %Q(<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Aplikacja Rack</title>
  </head>
  <body>
    <h1>Aplikacja Rack</h1>#{
    request.params['imie'].upcase + ' ' + request.params['nazwisko'].upcase unless request.params['imie'].nil? || request.params['imie'].nil?
    }
    <form action="http://localhost:9292/">
      <input type="text" name="imie">
      <input type="text" name="nazwisko">
      <input type="submit" value="Submit">
    </form>
  </body>
</html>)          # Umieść, w ciele odpowiedzi, podany dokument HTML
    response.finish # Wyślij odpowiedź
  end # def call(env)
end   # class HelloWorld