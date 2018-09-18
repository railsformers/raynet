module Raynet
  class Core

    def request(params = {})
      req = RestClient::Request.new(
          method: params[:method],
          url: "https://app.raynet.cz/api/v2/#{params[:endpoint]}",
          user: Raynet::Config.config[:user],
          password: Raynet::Config.config[:api_key],
          headers: headers,
          payload: params[:data].to_json
      ).execute

      JSON.parse(req, symbolize_keys: true)
    end

    def headers
      {'X-Instance-Name' => Raynet::Config.config[:instance_name], accept: :json, content_type: :json}
    end
  end
end