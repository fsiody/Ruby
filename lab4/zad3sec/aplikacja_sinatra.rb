require 'sinatra'
require 'sinatra/reloader' if development?

use Rack::Auth::Basic, "Protected Area" do |firstname, lastname|
  firstname == 'Lena' && lastname == 'Obertynska'
end


get '/' do
  @welcome =  request.params['imie'].upcase + ' ' + request.params['nazwisko'].upcase unless request.params['imie'].nil? || request.params['nazwisko'].nil?
  erb :index
end
__END__

@@ layout
<%=
  File.read("sinatra.html")
%>
<%= yield %>

@@ index
<%= @welcome %>