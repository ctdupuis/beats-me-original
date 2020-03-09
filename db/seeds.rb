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

def make_seeds(track_hash, album, artist, genre, user, img)
    genre = Genre.find_or_create_by(name: genre)
    artist = Artist.find_or_create_by(name: artist)
    alb = Album.new(name: album, artist_name: artist.name, genre_id: genre.id, user_id: user.id, img_url: img)
    track_hash.each do |k, v|
        song = Song.new(v)
        song.artist_id = artist.id 
        song.save
        alb.songs << song
        alb.save
    end
end

up_img = "https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Logic_Under_Pressure_9.10.14.jpg/220px-Logic_Under_Pressure_9.10.14.jpg"
up_tracks = {
    :t1 => {:title => "Intro", :runtime => "3:02"},
    :t2 => {:title => "Soul Food", :runtime => "4:52"},
    :t3 => {:title => "I'm Gone", :runtime => "4:42"},
    :t4 => {:title => "Gang Related", :runtime => "2:47"},
    :t5 => {:title => "Buried Alive", :runtime => "5:37"},
    :t6 => {:title => "Bounce", :runtime => "4:04"}
}
   
swimming_img = "https://i.pinimg.com/originals/63/94/31/63943167a3e0fe622a4a11466ebeab8a.jpg"
swimming_tracks = {
    :t1 => {:title => "Come Back to Earth", :runtime => "2:41"},
    :t2 => {:title => "Hurt Feelings", :runtime => "4:05"},
    :t3 => {:title => "What's the Use?", :runtime => "4:48"},
    :t4 => {:title => "Perfecto", :runtime => "3:35"},
    :t5 => {:title => "Self Care", :runtime => "5:45"},
    :t6 => {:title => "Wings", :runtime => "4:10"}
}

circles_img = "https://www.macmillerswebsite.com/sites/g/files/g2000009776/files/2019-12/Banner-Art.jpg"
circles_tracks = {
    :t1 => {:title => "Circles", :runtime => "2:50"},
    :t2 => {:title => "Complicated", :runtime => "3:52"},
    :t3 => {:title => "Blue World", :runtime => "3:29"},
    :t4 => {:title => "Good News", :runtime => "5:42"},
    :t5 => {:title => "I Can See", :runtime => "3:40"},
    :t6 => {:title => "Everybody", :runtime => "4:16"}
}

fhd_img = "https://upload.wikimedia.org/wikipedia/en/2/2a/2014ForestHillsDrive.jpg"
fhd_tracks = {
    :t1 => {:title => "Intro", :runtime => "2:09"},
    :t2 => {:title => "January 28th", :runtime => "4:02"},
    :t3 => {:title => "Wet Dreamz", :runtime => "3:59"},
    :t4 => {:title => "03' Adolescence", :runtime => "4:24"},
    :t5 => {:title => "A Tale of 2 Citiez", :runtime => "4:29"},
    :t6 => {:title => "Fire Squad", :runtime => "4:48"}
}

hollywood_img = "https://bloximages.newyork1.vip.townnews.com/dailynebraskan.com/content/tncms/assets/v3/editorial/f/98/f980399a-d299-11e9-a670-d3964076fe5f/5d759f4b36a7d.image.jpg?resize=600%2C600"
hollywood_tracks = {
    :t1 => {:title => "Hollywood's Bleeding", :runtime => "2:36"},
    :t2 => {:title => "Saint-Tropez", :runtime => "2:30"},
    :t3 => {:title => "Enemies (feat. Da Baby)", :runtime => "3:16"},
    :t4 => {:title => "Allergic", :runtime => "2:36"},
    :t5 => {:title => "A Thousand Bad Times", :runtime => "3:41"},
    :t6 => {:title => "Circles", :runtime => "3:35"}
}

make_seeds(up_tracks, "Under Pressure", "Logic", "Rap", u1, up_img)
make_seeds(circles_tracks, "Circles", "Mac Miller", "Hip Hop", u1, circles_img)
make_seeds(swimming_tracks, "Swimming", "Mac Miller", "Hip Hop", u2, swimming_img)
make_seeds(fhd_tracks, "2014 Forest Hills Drive", "J. Cole", "Rap", u3, fhd_img)
make_seeds(hollywood_tracks, "Hollywood's Bleeding", "Post Malone", "Pop", u3, hollywood_img)
