class HomeController < ApplicationController


  def index

  end

  def dinner

  end

  def lunch
  end

  def brunch
  end

  def drinks
  end

  def reservations
  end

  def contact

  end

  def map
  end

  def email
      # set the from, subject and to addresses
      from = SendGrid::Email.new(email: params[:from])
      subject = params[:subject]
      to = SendGrid::Email.new(email: "mariadfrancia2016@gmail.com")
        # set the content to send in the email
        content = SendGrid::Content.new(type: 'text/plain', value: params[:content])
        # set the mail attribute values
        mail = SendGrid::Mail.new(from, subject, to, content)
        # pass in the sendgrid api key
        sg = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])
        # send the email
        response = sg.client.mail._('send').post(request_body: mail.to_json)
        # display the response status code and body
        puts "Status code = #{response.status_code}"
        puts "response"
        puts response.body
        redirect_to "/"
      end

end
