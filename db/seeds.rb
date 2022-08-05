# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts " 🌱🌱🌱 Seeding projects and sample reviews..."

projects = Project.create!([
    {
        name: "Uhuru Gardens",
        image_url: "https://cdn.standardmedia.co.ke/images/wysiwyg/images/09fpjoCDmjryXfvOOGfKYw4g5FYK8GnBtDT3GJTM.jpg"
    },
    {
        name: "SGR",
        image_url: "https://cdn.standardmedia.co.ke/images/thursday/tkfwjev9l7bwpyzq58c0e5b60ff2b.jpg"
    },
    {
        name: "Port Operations",
        image_url: "https://omcinternational.com/wp-content/uploads/2020/03/shutterstock_218774425.jpg"
    },
    {
        name: "KMC",
        image_url: "https://cdn04.allafrica.com/download/pic/main/main/csiid/00510193:9f890c654e69f2067ba1d1f43c754a3a:arc614x376:w735:us1.jpg"
    },
    {
        name: "Galana Kulalu",
        image_url: "https://www.irrigation.go.ke/wp-content/uploads/2018/10/galana-project-bg.jpg"
    },
    {
        name: "Isiolo Airport",
        image_url: "https://www.kaa.go.ke/wp-content/uploads/2016/04/C2rMfhmXgAAAn_F.jpeg"
    },
    {
        name: "Expressway",
        image_url: "https://kenyanwallstreet.com/wp-content/uploads/2020/06/jyfivgpatyla25d3d5a1dbb64f.jpg"
    },
    {
        name: "NOFBI",
        image_url: "https://cdn.standardmedia.co.ke/images/saturday/mzidryjeve6sr5hm8603a99027e3f6.jpg"
    }
])

reviews = Review.create!([
    {
        title: "Waste of resources",
        description: "Why must we always have Kenyansa projects??",
        score: 1,
        project: projects.first
    },
    {
        title: "Misplaced priorities",
        description: "We have millions dying of hunger and we cannot afford to build such facilities",
        score: 2,
        project: projects.first 
    },
    {
        title: "Bad Legacy",
        description: "Uhuru should focus on better legacy projects",
        score: 1,
        project: projects.first
    },
    {
        title: "A good facility for Nairobi",
        description: "The project will be grand historical monument for all generations ",
        score: 4,
        project: projects.first
    }
])

puts "🌱🌱🌱 Done Seeding!"