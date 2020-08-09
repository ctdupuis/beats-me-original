# BeatsME

[Live Demo](https://beats-me.herokuapp.com)

### About

BeatsME is a prototype music-sharing app. Users will have the power to create an account to log in and add content. If a user already has an account through Spotify, they can use that account to log in as well. Only verified users may submit content. All users will have the freedom to add songs to the app. These songs must belong to an album, even if they are a single. Users will have control over content that belongs to them - they will have the option to edit and delete content as they please, so long as it is theirs. A feature to create playlists and add songs from the app has also been implemented.
Full launch of the app would include users to submit and play mp3 files as songs.

### Features

- Uses authentication and authorization through BCrypt and Rails sessions, omniauth through Spotify
- Submit new albums as a user, edit and delete your submissions
- Browse content submitted by other users
- Guest login to view full functionality without the need to create an account

### Frontend

- Rails default views with JavaScript

### Backend

- Ruby [2.6.1]
- Rails [6.0.2]
- PostgreSQL (Database)
- Bcrypt
- Dontenv
- Omniauth, Omniauth-Spotify

## Installation Instructions

- Clone repo from GitHub `git clone git@github.com:ctdupuis/beats-me.git`
- Run `bundle install`
- Run `rake db:setup` to initialize database
- Run `rails server` to initialize local server
- Navigate to [localhost:5000](http://localhost:5000)