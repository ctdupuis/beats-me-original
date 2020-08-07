User.delete_all
Genre.delete_all
Artist.delete_all
Song.delete_all
Album.delete_all


genres = [
        "Rap",
        "Hip Hop",
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

genres.each{ |genre| Genre.create(name: genre) }

u1 = User.create(username: "webhead", email: "futuredev@learn.co", password: "railsproject")
u2 = User.create(username: "moomoo", email: "moocow@pepperidgefarms.com", password: "railsproject")
u3 = User.create(username: "BigDoggoMilo", email: "noleantreats@perard.com", password: "railsproject")
guest = User.create(username: 'Guest', email: 'guest@beatsme.com', password: 'password')


imgs = {
    under_pressure: "https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Logic_Under_Pressure_9.10.14.jpg/220px-Logic_Under_Pressure_9.10.14.jpg",
    swimming: "https://i.pinimg.com/originals/63/94/31/63943167a3e0fe622a4a11466ebeab8a.jpg",
    circles: "https://www.macmillerswebsite.com/sites/g/files/g2000009776/files/2019-12/Banner-Art.jpg",
    forest_hills_drive: "https://upload.wikimedia.org/wikipedia/en/2/2a/2014ForestHillsDrive.jpg",
    hollywoods_bleeding: "https://bloximages.newyork1.vip.townnews.com/dailynebraskan.com/content/tncms/assets/v3/editorial/f/98/f980399a-d299-11e9-a670-d3964076fe5f/5d759f4b36a7d.image.jpg?resize=600%2C600",

}


albums = [
        {
            name: "Under Pressure",
            artist_name: "Logic",
            genre: Genre.find_or_create_by(name: "Rap"),
            user_id: 1,
            img_url: imgs[:under_pressure],
            songs: [
                {title: "Intro", runtime: "3:02"},
                {title: "Soul Food", runtime: "4:52"},
                {title: "I'm Gone", runtime: "4:42"},
                {title: "Gang Related", runtime: "2:47"},
                {title: "Buried Alive", runtime: "5:37"},
                {title: "Bounce", runtime: "4:04"},
                {title: "Growing Pains III", runtime: "4:06"},
                {title: "Never Enough", runtime: "4:22"},
                {title: "Metropolis", runtime: "4:55"},
                {title: "Nikki", runtime: "3:23"},
                {title: "Under Pressure", runtime: "9:19"},
                {title: "Till the End", runtime: "5:12"}
            ]
        },
        {
            name: "Swimming",
            artist_name: "Mac Miller",
            genre: Genre.find_or_create_by(name: "Hip Hop"),
            user_id: 2,
            img_url: imgs[:swimming],
            songs: [
                {title: "Come Back to Earth", runtime: "2:41"},
                {title: "Hurt Feelings", runtime: "4:05"},
                {title: "What's the Use?", runtime: "4:48"},
                {title: "Perfecto", runtime: "3:35"},
                {title: "Self Care", runtime: "5:45"},
                {title: "Wings", runtime: "4:10"},
                {title: "Ladders", runtime: "4:47"},
                {title: "Small Worlds", runtime: "4:31"},
                {title: "Conversation Pt.1", runtime: "3:30"},
                {title: "Dunno", runtime: "3:57"},
                {title: "Jet Fuel", runtime: "5:45"},
                {title: "2009", runtime: "5:47"},
                {title: "So It Goes", runtime: "5:12"}
            ]
        },
        {
            name: "Circles",
            artist_name: "Mac Miller",
            genre: Genre.find_or_create_by(name: "Hip Hop"),
            user_id: 2,
            img_url: imgs[:circles],
            songs: [
                {title: "Circles", runtime: "2:50"},
                {title: "Complicated", runtime: "3:52"},
                {title: "Blue World", runtime: "3:29"},
                {title: "Good News", runtime: "5:42"},
                {title: "I Can See", runtime: "3:40"},
                {title: "Everybody", runtime: "4:16"},
                {title: "Woods", runtime: "4:46"},
                {title: "Hand Me Downs", runtime: "4:58"},
                {title: "Hands", runtime: "3:19"},
                {title: "That's On Me", runtime: "3:37"},
                {title: "Surf", runtime: "5:30"},
                {title: "Once A Day", runtime: "2:40"}
            ]
        },
        {
            name: "2014 Forest Hills Drive",
            artist_name: "J Cole",
            genre: Genre.find_or_create_by(name: "Rap"),
            user_id: 1,
            img_url: imgs[:forest_hills_drive],
            songs: [
                {title: "Intro", runtime: "2:09"},
                {title: "January 28th", runtime: "4:02"},
                {title: "Wet Dreamz", runtime: "3:59"},
                {title: "03' Adolescence", runtime: "4:24"},
                {title: "A Tale of 2 Citiez", runtime: "4:29"},
                {title: "Fire Squad", runtime: "4:48"},
                {title: "St. Tropez", runtime: "4:17"},
                {title: "G.O.M.D.", runtime: "5:01"},
                {title: "No Role Modelz", runtime: "4:52"},
                {title: "Hello", runtime: "3:39"},
                {title: "Apparently", runtime: "4:53"},
                {title: "Love Yourz", runtime: "3:31"},
                {title: "Note to Self", runtime: "14:38"}
            ]
        },
        {
            name: "Hollywood's Bleeding",
            artist_name: "Post Malone",
            genre: Genre.find_or_create_by(name: "Pop"),
            user_id: 3,
            img_url: imgs[:hollywoods_bleeding],
            songs: [
                {title: "Hollywood's Bleeding", runtime: "2:36"},
                {title: "Saint-Tropez", runtime: "2:30"},
                {title: "Enemies (feat. Da Baby)", runtime: "3:16"},
                {title: "Allergic", runtime: "2:36"},
                {title: "A Thousand Bad Times", runtime: "3:41"},
                {title: "Circles", runtime: "3:35"},
                {title: "Die For Me (feat. Future & Halsey)", runtime: "4:05"},
                {title: "On the Road (feat. Meek Mill & Lil Baby)", runtime: "3:38"},
                {title: "Take What You Want (feat. Ozzy Osbourne & Travis Scott)", runtime: "3:49"},
                {title: "I'm Gonna Be", runtime: "3:20"},
                {title: "Staring At The Sun (feat. SZA)", runtime: "2:48"},
                {title: "Sunflower - Spider-Man: Into the Spider-Verse (feat. Swae Lee)", runtime: "2:37"},
                {title: "Internet", runtime: "2:03"},
                {title: "Goodbyes (feat. Young Thug)", runtime: "2:54"},
                {title: "Myself", runtime: "2:38"},
                {title: "I Know", runtime: "2:21"},
                {title: "Wow.", runtime: "2:29"}
            ]
        }
]

albums.each.with_index do |album, index| 
    alb_id = index + 1
    alb = Album.create(
        name: album[:name],
        artist_name: album[:artist_name],
        genre: album[:genre],
        img_url: album[:img_url],
        user_id: album[:user_id]
        )
    songs = album[:songs].map do |song| 
        s = Song.new(song)
        s.artist_id = alb.artist.id
        s.album_id = alb_id
        alb.songs << s
        alb.save
        s.save
    end
end


# concrete_img = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTEhIWFhUXGBcYFxgYFxcWGBcVGBgXFxcXFxgYHSggGBolGxgVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGBAQFS0dHh0rKzYrLS0rLS0tKysrLS0tKzcrLS0tLS0tLS0tLSsrLSstLSsrKysrLS03LSs3KysrK//AABEIAOAA4QMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAABAgADBgUEB//EAD8QAAEDAgIGBQoDCAMBAAAAAAEAAhEDITFBBQYSUWGRBCJxobETMkJScoHB0eHwFmKiIzNTgpKywvEVY9JD/8QAGQEBAQEBAQEAAAAAAAAAAAAAAAECAwQF/8QAIBEBAQACAgMBAQEBAAAAAAAAAAECEQMhMUFREoFhQv/aAAwDAQACEQMRAD8A+Q6J0ea9TYDg2xdJBIgRkO1dSpqq8SfKt4dU371Xqf8Avjf0Dl+Zq2T3C4tE78NybuzrTFnVqp/EZ+ofBIdXavr0+bv/ACtTUZieKjQIjt+/BO/ozDNXXnF7I/mPZaAh+HX5vbyd8rrTbWUZpXff0Tv6bZz8OuyqNPuKso6vY7VQzHV2W58ZPm9l13o4p9qE7+m2a/Dj/XbO6HeKVur1TNzQMzcrREEkTNu8r0bNsMlZL9NswzV4zeoN1mmfGE/4bOb7+zbxlaJwx8ErW5T9E1/rO2fGrhzqcm/VL+Hf+z9PzK0JvFs0uaLtwhq2fXt2X8VHauEGPKY4W+q0LlHNzyV0bZwauuw27+yfmo/VxwE+UH9P1WiaQEzhmpq/U2zQ1eMx5Uf0/VT8POmPKD+k/NaOEoN8Uu/rW2eOrrv4g97SPilGrr/XbE7neELTAYJQ1Tv6bnxnBq3Ux22cnD4KDVx/8RoPY7D3rTbO+6LW+9Xv6m2a/Db/AOI3k5KNW6l+uy2XW+S0zWwCiGgpq/TbMjVmsfSp5Zuz/lXj0pomp0fZ2y0h0wWknCJmQN627HDEdUiMRlwXF10PUpiPTJ/TfNXWiXbJqKKK6TbuapCaruLIPZtNzywx4rV1MVlNUz+0f7Hv89uC1D3QcfvFY91r0QlK6pkptZKIhCUpG5WAJCgZtOVZFt6lPgg11yqCBKZotKLDdNUb3hBROaekEAd6dqABpSAJiUrmC0+5EEUxzP0UD4dswo1+Sp2iXACwVNLSMUHqwqqqdwRQEKolWtwSOZCgtbki0KqferAEFhKUO+SiDqY+/FA2SIAQAUaFQwzuRGfZeexcTXBwNOnHrf4nuWgp/BZ/W792y3p/4myVIyyiii2und1SA8q+fUt/UMVpq75Pd3LN6ntJqVPY+NloGmRK4+6oFt0zojFVuN0Q+VQjyQoCrHcISKC2UoN01M3SOduVQ4OasJVTTMIzZUSEBioCme2byoAAcVCcE7Tf4qs3VFVUbsUeiA5p3gTZRrolACbylquMjcrHHckqBArTbijko0IGUABTXSQnbj3qBpOaYunFI7sRBVFwU2EoJVjUFlJZ7W5006c265/t3LvMK4OuHm0zEdZw7m3++KX0Rl1FFF1V39UDD6h/KJyttXvZaOoO4C3uxWd1QMOqXgbIk8JNloqpz3rh7o85KlMJiLZykA3oDKjb8EC6bQgHILQeKAAQlQCVRY0wVArXMgKvfKIdoCZVNTB6CAx2J6kWhKqtoxJtwQSvYyEgO9Eum6RveirIlLKjcLIB0C332oGaUHBKDkmARAKh+SsAUhAgO8pmn78EArAggHFWhViyYKhmjDP7yXB1tEU6d567ucCV3QTmuHrbemw7qhHNv0Wb5ixl1FFF3RodUHdapOEMnLAu+a0dU+5ZvVF8Oqby0AWk3J5LQ1sLffYvP/1Wr4Uv3JCd6hvn97kOCqFDhKOKgF4RFs0FmySOxWhsHBBuF0XHObKhnEqNHFB44ympRmqhISkWTuAnFLCgWmTmg5xunLoF179CaIf0qpsss0ee44NHxPBS2SbqybcqSUADyXQ6Hot1VtRzLlhwt1gdrvsCvBFzZJlL49LZZ5FjsUhYCCDniOBxCZFroJKqKqYIVrG7koanpcURYAmAQBsiqEIUCYtUA96gJwKJwUBBQAVFjTvzXD1uH7Nntn+0wTPau00D5Lia3HqM9sz/AE2+KlWMuooouqO/qh+8eZ9ECJIm8mPcCtDUy7VntUT16nsjxWiqrjfNa9POAgQilY4g3EqILL4pmickGt4J2ttOAVFj8EpYDjgmj5qNddUSL+CdptxVZNku0QN5RFjG3wSucEabrcV6dDaKf0mpsts0ec7ID4ngpbJN1ZN9H0Loh/Sn7Is0Xc+LNHxPBfTuidFp0KOxTbstHMneTmV59HdDZRYGUx1RiTEk5k8VXp3SbKFKXXJkNaMSfkvBycl5LqPVjhMJ2yuprRsViT6TP8159OaKB/aUx1rkj1sST2rxaA0sKJe12DoM7iJF+ZWjp1QLwb3JMERkB7lc7lhybiYyXHTC03zcYIsIdgZWk0voUPl9Lzs2jPiOPBZ2i2F6+POZzccMsbjSkEJ6aki9+2MjYwdyYhdGTUhvTkpQNyICIUHNEqFEtQQBAhGLokoA1cXW6fJ0zltuA5LtgeC4WtnmU/bcP0jklWMyooot6R39UfPqey339b/a0leLnuWc1RA2qk7m+Lloa+UYZLn7rXpVUw4qsjMpnNsgEQGOVzRvQP3ZEoLHCQLpCEQbhK8XxVQeKDXIsC6ugNAu6S4gS1jT135DgMi7h71LZJurJvpVoXQ1TpL4bZgPWdkOA3ngvonQ+hNosDKbYA7zmSd5heno/RadGn5OlDQAYzvvd6xXg03pdnR2bTnScA3Nx4bgMSdy8HJneS6j1YYzCF0vpNnR2bTrk2a0YuP3nkvnPT+mvrPL3m5yyA3AZBU6V0lUq1dp95FtzW5ADmvVojRZrvNyGtBLjvwOyBm75lejjwx45uuWeVzuoo6Dot1d2wywttuyYN+PhmFq6HQhTbsgmALGZXP1PqgMrDe5nus7FNpfSfkrMMv7m8e3guHNcs8/zHTDWOO67VNgIOMi+6bblytPaFDv2tMdf0m+txHHxXg0JposOzVJLTPWNy2fh4LSOqtdgRlnks2ZcWS9ZxhdhQG33gtVprQ/lAX0h14lzfWG8H1llCPd24jevdhyTObjzZY/m9iwlPKRoiY+7ptpbZEqBByIKBnJHN+nI370ZQc5FOzlZcLW5o2GH87h+ltuOAXdpmQd64etv7tntk9kt/1yU9xYy6iii67ZaHVBt6pgxDb8ZK0dZwtulZzVE9ap2NPeb+C0dUDI/LvzXP3VUubu/wBKbSD8VVN+ag9AfbBCJVYKYHG6ouAACV2AsqnPy3qB6IcnBdHQ2mX9HfIksPntmxG8bnDeubtcEj33ngpljLNVZbO4+o9G6VTqUxUY4kRvw3g7iuVpPR7KzIc47QnZdiRPiFldE6SfRcSLtPnt3jhuK1HRqzajQ5hkHuOYPFfP5eO8d3Hqwy/c7ZboWhqj3lr5a1pu7/zvlaTouiXgljHhlMthpF37ckXyIhWbZlcfWTTjqILGAhxAkjEzZoZxOE9van7z5stH5mE25WjOneQp1GgE1HEQ7JsAgmPfgvCXTcnHGbygzD6/FajVTVoOPl6o6ti1sefGbvy8M17L+eOXJwm87o+rmrXlAKtYEM9Bp9Pify8M1pKHQGkTbE5Tgd69tWpGJssxrBrB5OadM9fMj0J3fm8F4rcuXJ6JJhDax6XZS/Z0r1PSOTOze7wWNcJx8fu6hR2Y5r3cfHMJqPNlncqG1GCcFVufwk8FY1dGDlI1FwSE3RUlDajlCGyiT34KC2i4YBcTW0DYZHrme3Zt2WXapgk43H3dcTWxw2GAeu7KPRGfvT3FjMqKKLbLR6oN/eb+py6y0T3Hatn4rP6nO/e2nzefWXedke2fALPtapLZulcR9707ogKpl4Ft6gIba+CIwRKYNCBbIsAzCMJWmbGyoZ8gJI3RxThvJTaE4WQFpV2j+nOpOkXafObv+qpLSFURipZLNUl1dtxQe2o3bY6x5jt4qzpmjG127Js4Dqu3dvD5rI6M6U6idoHq2lu8cOK22gSXQ5r/ACgJJkwCAfRgYRYL5/JxXiy3Hqxymc0zGqWim1qhNS4YR1cnEzid1lvIj3YAbslmtQaU+VP5mj3w75pta9P7BNKi7r+m4ejwHHwWuSZcmeomNmOO3n1o06GzSpkF3pOx2OA/N4LKOGaqc2fvfirATnzXr4+Occ1HDLK5XdRx+CaM0jhuTNd3LoyMcEwOCDH8ESdyIlRyGajhaUJvJRSlqGzF7ScbX55oyoDz+CgspNPH3d65GtrR5Kmfzn+0rsNdG5cbW4/s6ftu7D1QRynfmnuLGXUUUW2Wj1RiKsm/VIHPPuXbe0yN3x3Lh6oY1N3U7fS7loOlNAM4Z5LPurSsaI5qoQrmCyrcOSBTx8EYsiHXQ2hOagcgpHC0pmnJRgvCqAXGMM+5AK2PsJKjYOEoCXHvSvbillN70EExEro6C0y/o1TaaJafOaTAI3jceK5tTcpipZL1VnXbqdB0u6lSqspiDUcCXTdoANhuJnHJc6eaUouNkmMnhbdq3HcEzRwslYU7cAqgVG4J2CyUq2miK05CJaEpQF2CrI4JnhI3C+aKDk0KPCDVBZsrj62AeSpQ6SXOLhBGyQIAJzkbl26X3C4etoIp0/bP9oT2sZhRRRbZaHVIGXwYu2RvHWiFoq7hAHes7qjjU/k/zstJUZvCzPNW+iAQo4pzcWSNxRFNQZfcIHFWOhIUUG4q+m4blQUabzOHBBe8bkhKJcgcUQmygRGGaJKg7BKKCIbdK0GUz2XlBIlF25EYKOFkFcowUwCIGN0QCFbTsEuymAsVQAlEyi0JkCOCgNkzikw4qKjvqkCsLEhGCgupCy4WtxGxSx85/gPmu5RcuHrgOrTvi55ytZtkvpYzKiii67ZaLVJ3ntylp4zf5LSuBjhiMuazWqX/ANDGbf8AJaMuJF95WPZRaTHuSQrQEkSSgqck3qyqLpQoEbimA4qAoCQigDvQcLgpnmEhdIUBBRJVcWKdosgsa+QnK85EJxN1RY2FCEQm2URU7FEhEtlFzVQGhO0IRki3ggBCE8EzkA2ygVwQcmJQIQByVoTvQAQWsxC4Ot7YbT9t3gJ+C7UnvXE1wPVpe0/lDUVmVFFFpGg1VdG2TmWj39Y8lpWunms9qgJ2x+Zp7itJmpPNLTPZOCrpIuJRY6yqEcJN1UWp3GFS5yinG9K5shIDCdwKgUsEYpXjJNKUoqEWUDUAjNkDbKsByxVbTzVtNqIMQnCpe/fKtpmUDAXSlM1uKDyqDsqNbuUa+yG0gLmXUIuoXXRO9AHNSlqFWbXTBpQVuQcneqOCC2k35ria3t6tJ3F47m/Jd+gPjyXE1yEMpjLbPb5qyrKqKKLaNPqW29Qxm0dxK0nSGd6wuiNLv6PtbIB2omZtExHMr3/il8klgMxi7A7xZTvssaW5CfaIyssn+JH/AMMYesean4kf6gmPWPyTf+GmncJxVWxnZZs6wu9T9R8IQOn3H0P1G/E2xUXTSOGCTbus2NOO9QYzj9ME508cmdvWse5O/hpoXG4QJ4LPjTxtLP1fRH/niMKY95+mKdjvm+KPk+Nvgs4dPO9Qcz8kP+dffqi/HLkr/Bp2s49icOhZU6ef6reZS/8ANv8AVHM+Kd/E01ZO9HykTI7OPesv+IH4bI538FY3WN2bOTvmENNQHyJPcldnKzH4kf6gn2j8lDrG/wBQc/onZppaTTH3ZEceKzQ1kfkwT2/RQ6xEi9OXTjt4DgIT+GmoMwLEe5Fjj/pZcayP9S3tX8E1PWU+lT5HxsnZppa5kZe4oh9rAlZl+spyp8znyUOspxFPre1bwlDTUEcCPqqdgk4fDms03Wapm0cyPmo/WaofRbG6Spdq2FAZWIOEcis7rmOrTwu5/cG37+9eNmtFUeg3mVz9KaUfXIL4GyIAAwmJxxNgnY8Kiii0j//Z"
# concrete_tracks = {
#     {title: "T-Shirt", runtime: "1:22"},
#     {title: "Run", runtime: "5:23"},
#     {title: "Make It Right", runtime: "4:39"},
#     {title: "The Sky Is A Neighborhood", runtime: "4:04"},
#     {title: "La Dee Da", runtime: "4:02"},
#     {title: "Dirty Water", runtime: "5:20"},
#     {title: "Arrows", runtime: "4:26"},
#     {title: "Happy Ever After (Zero Hour)", runtime: "3:40"},
#     {title: "Sunday Rain", runtime: "6:11"},
#     {title: "The Line", runtime: "3:38"},
#     {title: "Concrete and Gold", runtime: "5:31"}
# }




