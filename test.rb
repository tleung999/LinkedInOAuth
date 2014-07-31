require_relative './lib/OauthLinkedIn'

args = {api_key: "759rr8n7tyltu2",
        api_secret: "wIBKNfVghdHFsO44",
        redirect_uri: "http://localhost:9393/auth",
        state: "fejianvkenafkea"}

connection = OAuthLinkedIn::LinkedIn.new(args)

connection.redirect_to_LinkedIn
