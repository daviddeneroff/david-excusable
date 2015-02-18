User.create(username: "david", password:"123", password_confirmation: "123")
User.create(username: "mike", password: "123", password_confirmation: "123")
User.create(username: "john", password: "123", password_confirmation: "123")

Excuse.create(title: "deli", content:"riva deli", user_id: 1)
Excuse.create(title: "hello", content: "how are you", user_id: 2)
Excuse.create(title: "hey man", content: "sup bru", user_id: 3)

Comment.create(content: "nice one man", user_id: 1, excuse_id: 2)
Comment.create(content: "no way", user_id: 2, excuse_id: 3)
Comment.create(content: "that counts", user_id: 3, excuse_id: 1)