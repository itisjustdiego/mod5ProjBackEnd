# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# U  password: 'd', zipcode:11249, main_character:'fox', skill:'easy')





Message.create(sender_id:1, receiver_id:2, content:'hi')
Message.create(sender_id:2, receiver_id:1, content:'hello whats up?')
Message.create(sender_id:1, receiver_id:2, content:'not much just testing')
Message.create(sender_id:2, receiver_id:1, content:'sounds good, i hope it works')
Message.create(sender_id:1, receiver_id:2, content:'it will, i have faith')
Message.create(sender_id:1, receiver_id:3, content:'now im testing with you')
Message.create(sender_id:3, receiver_id:1, content:'great ive always wanted to be tested')
Message.create(sender_id:1, receiver_id:3, content:'good you should be excited')
Message.create(sender_id:1, receiver_id:4, content:'your turn')
Message.create(sender_id:4, receiver_id:1, content:'im nervous')
Message.create(sender_id:1, receiver_id:4, content:'good')
Message.create(sender_id:2, receiver_id:4, content:'hi')
Message.create(sender_id:4, receiver_id:2, content:'hey')
Message.create(sender_id:2, receiver_id:4, content:'Im testing you now')
Message.create(sender_id:4, receiver_id:2, content:'ah ok')
