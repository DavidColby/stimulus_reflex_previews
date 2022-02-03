# Readme

The code in this repository was written to accompany the tutorial originally published [here](https://www.colby.so/posts/real-time-previews-with-stimulus-reflex).

The tutorial and this Rails 7 application demonstrate a simple implementation of parsing markdown and liquid content on the server, with real-time updates sent to the client using StimulusReflex.

To run this repo locally, clone it, checkout the complete branch and then:
```
bundle install
yarn
rails db:create db:migrate
bin/dev
```
Once the application is booted, visit http://localhost:3000/posts/new and start typing.

To see this application running in production, check it out [on Heroku](https://post-previewer-md.herokuapp.com/).
