module Raynet
  class Companies < Core

    def list(data)
      data['limit'] ||= 1000
      request(method: :get, endpoint: "company", data: data)
    end

    def create(data)
      request(method: :put, endpoint: "company", data: data)
    end
  end
end