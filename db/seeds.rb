genres = ["Hip Hop",
        "Jazz",   
        "Rock",
        "Blues",
        "Folk",
        "Musical Theatre",
        "Pop",
        "Classical",
        "Country",
        "Heavy Metal",
        "R&B",
        "Reggae",
        "Punk Rock",
        "Funk",
        "Techno",
        "Soul",
        "House",
        "Electronic Dance",
        "Disco",
        "Alternative Rock",
        "Gospel",
        "Orchestra",
        "Instrumental",
        "Electro",
        "Ambient",
        "Grunge",
        "Indie Rock",
        "Trance",
        "Industrial",
        "Dubstep",
        "Psychedelic",
        "Ska",
        "Progressive Rock",
        "Experimental",
        "Pop Rock",
        "Drum and Bass",
        "Breakbeat",
        "Blues Rock",
        "Hardcore Punk",
        "Hard Rock",
        "Opera",
        "Bluegrass",
        "Dub",
        "Death Metal",
        "Folk Rock"
    ]

genres.each do |genre|
    Genre.create(name: genre)
end

u1 = User.create(username: "webhead", email: "futuredev@learn.co", password: "railsproject")
u2 = User.create(username: "moomoo", email: "moocow@pepperidgefarms.com", password: "railsproject")
u3 = User.create(username: "BigDoggoMilo", email: "noleantreats@perard.com", password: "railsproject")

def make_seeds(track_hash, album, artist, genre, user)
    genre = Genre.find_or_create_by(name: genre)
    artist = Artist.find_or_create_by(name: artist)
    alb = Album.new(name: album, artist_name: artist.name, genre_id: genre.id, user_id: user.id)
    track_hash.each do |k, v|
        song = Song.new(v)
        song.artist_id = artist.id 
        song.save
        alb.songs << song
        alb.save
    end
end

up_tracks = {
    :t1 => {:title => "Intro", :length => "3:02"},
    :t2 => {:title => "Soul Food", :length => "4:52"},
    :t3 => {:title => "I'm Gone", :length => "4:42"},
    :t4 => {:title => "Gang Related", :length => "2:47"},
    :t5 => {:title => "Buried Alive", :length => "5:37"},
    :t6 => {:title => "Bounce", :length => "4:04"}
}
    
swimming_tracks = {
    :t1 => {:title => "Come Back to Earth", :length => "2:41"},
    :t2 => {:title => "Hurt Feelings", :length => "4:05"},
    :t3 => {:title => "What's the Use?", :length => "4:48"},
    :t4 => {:title => "Perfecto", :length => "3:35"},
    :t5 => {:title => "Self Care", :length => "5:45"},
    :t6 => {:title => "Wings", :length => "4:10"}
}

circles_tracks = {
    :t1 => {:title => "Circles", :length => "2:50"},
    :t2 => {:title => "Complicated", :length => "3:52"},
    :t3 => {:title => "Blue World", :length => "3:29"},
    :t4 => {:title => "Good News", :length => "5:42"},
    :t5 => {:title => "I Can See", :length => "3:40"},
    :t6 => {:title => "Everybody", :length => "4:16"}
}

fhd_tracks = {
    :t1 => {:title => "Intro", :length => "2:09"},
    :t2 => {:title => "January 28th", :length => "4:02"},
    :t3 => {:title => "Wet Dreamz", :length => "3:59"},
    :t4 => {:title => "03' Adolescence", :length => "4:24"},
    :t5 => {:title => "A Tale of 2 Citiez", :length => "4:29"},
    :t6 => {:title => "Fire Squad", :length => "4:48"}
}

hollywood_tracks = {
    :t1 => {:title => "Hollywood's Bleeding", :length => "2:36"},
    :t2 => {:title => "Saint-Tropez", :length => "2:30"},
    :t3 => {:title => "Enemies (feat. Da Baby)", :length => "3:16"},
    :t4 => {:title => "Allergic", :length => "2:36"},
    :t5 => {:title => "A Thousand Bad Times", :length => "3:41"},
    :t6 => {:title => "Circles", :length => "3:35"}
}

make_seeds(up_tracks, "Under Pressure", "Logic", "Rap", u1)
make_seeds(circles_tracks, "Circles", "Mac Miller", "Hip Hop", u1)
make_seeds(swimming_tracks, "Swimming", "Mac Miller", "Hip Hop", u2)
make_seeds(fhd_tracks, "2014 Forest Hills Drive", "J. Cole", "Rap", u3)
make_seeds(hollywood_tracks, "Hollywood's Bleeding", "Post Malone", "Pop", u3)
