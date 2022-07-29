# def self.all
#     data = []
#     temp_data = GetData.new(path_link: "users").call

#     temp_data.each do |user|
#         data.append(User(
#                 id: user['id'],
#                 name: user['name'],
#                 username: user['username'],
#                 email: user['email'],
#                 phone: user['phone'],
#                 website: user['website']
#             ))
#     end

#     temp_data
# end