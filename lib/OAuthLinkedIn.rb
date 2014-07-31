# require "OAuthLinkedIn/version"
require "httparty"

module OAuthLinkedIn
  puts "Albert SUCKS!"
  class LinkedIn
    def initialize(args)
      @linkedin_key = args[:api_key]
      @linkedin_secret = args[:api_secret]
      @redirect_uri = args[:redirect_uri]
      @scope = args[:scope] || nil
      @state = args[:state]
      @request_uri = "https://www.linkedin.com/uas/oauth2/authorization?response_type=code"
    end

    def create_redirect
      redirect_url = @request_uri + "&client_id=#{@linkedin_key}&state=#{@state}&redirect_uri=#{@redirect_uri}"
      if !@scope.nil?
        redirect_url << "&scope=" + @scope
      end
      redirect_url
    end

    def get_request_token(code)

      HTTParty.post("https://www.linkedin.com/uas/oauth2/accessToken?" +
                      "grant_type=authorization_code" +
                      "&code=#{code}" +
                      "&redirect_uri=#{@redirect_uri}" +
                      "&client_id=#{@linkedin_key}" +
                      "&client_secret=#{@linkedin_secret}")
    end

    def get_access_token

    end
  end
end



args = {api_key: "759rr8n7tyltu2",
        api_secret: "wIBKNfVghdHFsO44",
        redirect_uri: "http://localhost:9393/auth",
        state: "fejianvkenafkea"}

connection = OAuthLinkedIn::LinkedIn.new(args)

connection.redirect_to_LinkedIn

