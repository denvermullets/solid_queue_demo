# README

make sure you have the migrations ran for solid queue
```shell
rails db:create && rails db:migrate
```

start the app like normal
```shell
rails s
```

if you comment out the puma plugin you'll need to start solid queue separately
```ruby
# puma.rb
plugin :solid_queue
```

SQ
```shell
bundle exec rake solid_queue:start
```

scope out Mission Control
```
http://localhost:3000/jobs
```

add a que task (or 1000)
```ruby
UserMailer.receipt.deliver_later
```
cause a mail task to fail by uncommenting the line in `user_mailer.rb`

scope it out!