## Intial propose usage ++ client = RoomalloAPI::Client.setup("Your token").

module RoomalloAPI
  class Client

    END_POINTS = YAML::load(File.open(File.join('lib', 'roomallo_api', 'end_points.yml')))
    URL = "https://api.ytlabs.co.kr/stage/v1/"

    attr_reader :base_url, :token

    def initialize(token)
      raise "Please pass a valid access token" unless valid_token?(token)
      @token = token
      @base_url = URL
    end

    private

    def valid_token?(token)
      token.size == 32
    end
  end
end
