# Rails Developer Assignment

Allows the admin to post comments on behalf of the users they themselves
control. Kind of like The Sims version of Twitter.

## Requirements

* Ruby 3.1
* PostgreSQL
* Redis

## Initialize

```shell-script
git clone https://github.com/coiti/assignment.git
cd assignment
bundle install
bin/rails db:create db:migrate
```

Start the app with:

```shell-script
bin/dev
```

Start the scheduler and worker:

```shell-script
bin/rake rescue:worker
```

```shell-script
bin/rake resque:scheduler
```

To start things up, create a bunch of fake users:

```shell-script
bin/rake users:seed[100]
```

## Usage

Go to the main page and post a comment:

[http://localhost:3000/](http://localhost:3000)

To mention someone, type `@` in the text box, and then begin typing their name.

A suggestion box will appear with users that you can mention.

Users will be notified for every new comment that mentions them, every hour, via
their email address.
