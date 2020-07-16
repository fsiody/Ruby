# form.rb
class Form
  def initialize(app, auth)
    @app = app
    @auth = auth
  end

  def call(env)
    request = Rack::Request.new(env)
    imie = request.params['imie']
    nazwisko = request.params['nazwisko']

    unless imie.nil? || nazwisko.nil?
      unless (imie.eql? @auth[0]) && (nazwisko.eql? @auth[1])
        return [404, { 'Content-Type' => 'text/plain' }, ['Dostęp wzbroniony']]
      end
    end

    @app.call(env)
  end
end
