def webhook
  #logic here

  #Postback
  if fb_params.first_entry.callback.postback?
    value = params["entry"].first["messaging"].first["postback"]["payload"]
    puts case tag
    when "start"
      #start message here
      start()
    when "case-b"
      #logic here
      results()
    else
      #logic here
    end
  end

  render nothing: true, status: 200
end
