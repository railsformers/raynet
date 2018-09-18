module Raynet
  class Leads < Core

    def list(data)
      data['limit'] ||= 1000
      request(method: :get, endpoint: "lead", data: data)
    end

    def create(data)
      request(method: :put, endpoint: "lead", data: data)
    end
  end
end