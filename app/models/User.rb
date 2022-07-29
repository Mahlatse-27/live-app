class User
    attr_accessor :id, :name, :username, :email, :phone, :website

    def initialize(id:, name:, username:, email:, phone:, website:)
        @id = id
        @name = name
        @username = username
        @email = email
        @phone = phone
        @website = website
    end

    def self.all
        data = []
        temp_data = GetData.new(path_link: "users").call

        temp_data.each do |user|
            data.append(User.new(
                    id: user['id'],
                    name: user['name'],
                    username: user['username'],
                    email: user['email'],
                    phone: user['phone'],
                    website: user['website']
                ))
        end

        temp_data
    end
end

# {
#     "id": 1,
#     "name": "Leanne Graham",
#     "username": "Bret",
#     "email": "Sincere@april.biz",
#     "address": {
#       "street": "Kulas Light",
#       "suite": "Apt. 556",
#       "city": "Gwenborough",
#       "zipcode": "92998-3874",
#       "geo": {
#         "lat": "-37.3159",
#         "lng": "81.1496"
#       }
#     },
#     "phone": "1-770-736-8031 x56442",
#     "website": "hildegard.org",
#     "company": {
#       "name": "Romaguera-Crona",
#       "catchPhrase": "Multi-layered client-server neural-net",
#       "bs": "harness real-time e-markets"
#     }
#   },