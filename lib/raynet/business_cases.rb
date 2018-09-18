module Raynet
  class BusinessCases < Core

    def list(data)
      data['limit'] ||= 1000
      request(method: :get, endpoint: "businessCase", data: data)
    end

    def create(data)
      request(method: :put, endpoint: "businessCase", data: data)
    end
  end
end