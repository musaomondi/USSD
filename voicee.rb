require 'sinatra'
# require 'AfricasTalkingGateway'

post '/voice' do
  phoneNumber = params[:callerNumber]
  puts params.inspect
  # content_type 'text/plain'
  # say = "<?xml version='1.0' encoding='UTF-8'?>" \
    # "<Response>" \
    # "<Say> Please listen to this song</Say>" \
    # "<Dial phoneNumber ='+254706737244' />" \
    # "<Play url='https://www.youtube.com/watch?v=SXiSVQZLje8'/>" \
    # "</Response>"
  say = "<Response>" \
    "<Say>Your phoneNumber is  #{phoneNumber} </Say>" \
    "</Response>"
  body say
  status 200
end
