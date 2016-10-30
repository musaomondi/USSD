require 'sinatra'
post '/voice' do
  phoneNumber = params[:callerNumber]
  puts params.inspect
  # content_type 'text/plain'
  say = "<Response>"\
    "<Say voice='man'>Your phone number is #{phoneNumber}</Say>" \
    "</Response>"
  body say
  status 200
end
