require "sinatra"

get "/" do
  erb :"home"
end

get "/:msg" do
  message = params["msg"]
  first_letter = message[0]
  
  if ('A'..'Z').include?(first_letter)
    @response_message = "You wrote #{message}. Is that someone's name?"
    
  elsif ("0".."9").include?(first_letter)
    @response_message = "You wrote #{message}. Is that how old you are?"
    
  else
    @response_message = "You wrote #{message}. Whatever."
    
  end
  
  erb :"message"
end