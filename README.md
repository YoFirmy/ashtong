# Ashtong

This is a webapp I am still in the middle of creating. It is intended to organise orders and subscriptions making it easy for both customers of Ashtong and the creators of Ashtong.

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.0.0](https://github.com/organization/project-name/blob/master/.ruby-version#L1)
- Rails [6.1.3](https://github.com/organization/project-name/blob/master/Gemfile#L12)

##### 1. Check out the repository

```bash
git clone git@github.com:organization/project-name.git
```

##### 2. Create database.yml file

Copy the sample database.yml file and edit the database configuration as required.

```bash
cp config/database.yml.sample config/database.yml
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000