class GetData
    def initialize
    end

    def call(link)
        http_request("#{ENV['BASE_URL']}/#{link}", request_type[:get])
    end

    def request
    end

    def http_request(uri, type, body = nil)
        url = URI(uri)

        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true

        request_string =  "Net::HTTP::#{type}.new(url)"
        request = eval(request_string)
        request["Content-Type"] = 'application/json'
        request.body = body if body.present?

        response = https.request(request)
        JSON.parse(response.read_body)
    end

    def request_type
        {
            post: :Post,
            get: :Get,
            put: :Put,
            delete: :Delete
        }
    end
end