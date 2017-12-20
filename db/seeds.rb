# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# U  password: 'd', zipcode:11249, main_character:'fox', skill:'easy')

Message.create(sender_id:1, receiver_id:2, content:'hello world')
Message.create(sender_id:1, receiver_id:3, content:'hi world')
Message.create(sender_id:1, receiver_id:3, content:'hi world')
Message.create(sender_id:1, receiver_id:3, content:'hi world')
Message.create(sender_id:2, receiver_id:1, content:'hello wake')
Message.create(sender_id:4, receiver_id:7, content:'hello meeek world')
Message.create(sender_id:7, receiver_id:2, content:'hello 2 world')
Message.create(sender_id:9, receiver_id:5, content:'hello really world')
Message.create(sender_id:2, receiver_id:3, content:'h world')
Message.create(sender_id:6, receiver_id:1, content:'hello wrld')
Message.create(sender_id:6, receiver_id:8, content:'hel world')
Message.create(sender_id:8, receiver_id:6, content:'helo world')
Message.create(sender_id:5, receiver_id:3, content:'hllo world')
Message.create(sender_id:7, receiver_id:9, content:'ello world')
