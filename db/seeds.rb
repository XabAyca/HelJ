# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#real challenges data
Challenge.create(
  c_type: "algorithm",
  level: "easy",
  challenge_description: "Codesignal is one of the best coding challenge platform there is. Mainly because your solution complexity matter comparing to others 
	platform. There might be less challenges than others platform but their overall subjects are more aligned with tradition computer science
	problem.  Finally there are also company challenges which are difficult but so much rewarding.For this challenge go to code https://codesignal.com/ and begin arcade",
  challenge_img: "https://sdtimes.com/wp-content/uploads/2018/07/CodeSignalBanner-940x510-490x266.png",
  challenge_link: "https://codesignal.com/",
  challenge_name: "codesignal arcade",
)
Challenge.create(
  c_type: "algorithm",
  level: "middle",
  challenge_description: "Codesignal is one of the best coding challenge platform there is. Mainly because your solution complexity matter comparing to others 
	platform. There might be less challenges than others platform but their overall subjects are more aligned with tradition computer science
	problem.  Finally there are also company challenges which are difficult but so much rewarding.For this challenge go to code https://codesignal.com/ and begin Interview pratice",
  challenge_img: "https://sdtimes.com/wp-content/uploads/2018/07/CodeSignalBanner-940x510-490x266.png",
  challenge_link: "https://codesignal.com/",
  challenge_name: "codesignal Interview pratice",
)
Challenge.create(
  c_type: "algorithm",
  level: "hard",
  challenge_description: "Codesignal is one of the best coding challenge platform there is. Mainly because your solution complexity matter comparing to others 
	platform. There might be less challenges than others platform but their overall subjects are more aligned with tradition computer science
	problem.  Finally there are also company challenges which are difficult but so much rewarding.For this challenge go to code https://codesignal.com/ and begin Company challenges",
  challenge_img: "https://sdtimes.com/wp-content/uploads/2018/07/CodeSignalBanner-940x510-490x266.png",
  challenge_link: "https://codesignal.com/",
  challenge_name: "codesignal Company challenges",
)
Challenge.create(
  c_type: "design",
  level: "easy",
  challenge_description: "Onepagelove is a great plateform to find inspiration, on the plus side it only list one page. Your challenge here is to find a page your  love
	and redo it in the graphical ui tool of your choice (figma, sketch...). You can make web and mobile, but it’s not mandatory.    Pay attention on the font-size and color used by the creator  ( is there a hierarchy, how shades do they used..). Optional:redo the site with differents fonts and colors",
  challenge_img: "https://onepagelove.com/wp-content/themes/onepagelove/frontend/img/social/one-page-love-screenshot.jpg",
  challenge_link: "https://onepagelove.com/",
  challenge_name: "Select One page and study it",
)
Challenge.create(
  c_type: "design",
  level: "middle",
  challenge_description: "dailyui.co, provide a 100 days of ui newsletter challenge. But some challenges are more useful than others..
	That we handpicked some of them for you to pratice. For this challenge you gonna do 79 itineary, designing itinerary can help when designing Interface with mutlpitle step, or guided sections ( take a look at your profile page)",
  challenge_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz7JMME936U977aqc_KsCTUwxG9OAM1TJ8AA&usqp=CAU",
  challenge_link: "https://www.google.com/search?q=79+itinerary+daily+ui",
  challenge_name: "daily ui - 79 itineary",
)
Challenge.create(
  c_type: "design",
  level: "middle",
  challenge_description: "dailyui.co, provide a 100 days of ui newsletter challenge. But some challenges are more useful than others..
	That we handpicked some of them for you to pratice. For this challenge you gonna do 72  Image Slider",
  challenge_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz7JMME936U977aqc_KsCTUwxG9OAM1TJ8AA&usqp=CAU",
  challenge_link: "https://www.google.com/search?q=72+image+slider+daily+ui",
  challenge_name: "daily ui - 72  Image Slider",
)
Challenge.create(
  c_type: "design",
  level: "middle",
  challenge_description: "dailyui.co, provide a 100 days of ui newsletter challenge. But some challenges are more useful than others..
	That we handpicked some of them for you to pratice. For this challenge you gonna do 55 - icon set giving a try at making an icon set will train your design consistency and give you a keen eye for picking next one",
  challenge_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz7JMME936U977aqc_KsCTUwxG9OAM1TJ8AA&usqp=CAU",
  challenge_link: "https://www.google.com/search?q=55+icon+set+daily+ui",
  challenge_name: "daily ui - 55 icon set",
)

Challenge.create(
  c_type: "design",
  level: "middle",
  challenge_description: "dailyui.co, provide a 100 days of ui newsletter challenge. But some challenges are more useful than others..
	That we handpicked some of them for you to pratice. For this challenge you gonna do 39 - Testimonial are part of many sites as make up for accountability ",
  challenge_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz7JMME936U977aqc_KsCTUwxG9OAM1TJ8AA&usqp=CAU",
  challenge_link: "https://www.google.com/search?q=39+Testimonial+daily+ui",
  challenge_name: "daily ui - 39 Testimonial",
)

Challenge.create(
  c_type: "design",
  level: "middle",
  challenge_description: "dailyui.co, provide a 100 days of ui newsletter challenge. But some challenges are more useful than others..
	That we handpicked some of them for you to pratice. For this challenge you gonna do 8 - 404 page ",
  challenge_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz7JMME936U977aqc_KsCTUwxG9OAM1TJ8AA&usqp=CAU",
  challenge_link: "https://www.google.com/search?q=39+Testimonial+daily+ui",
  challenge_name: "daily ui - 8 404 page",
)
Challenge.create(
  c_type: "design",
  level: "hard",
  challenge_description: "Make your own - furniture store ( link some ressources / content) -  typeface store ( give some content / font ) - wine store - Online Mooc platerform  ( harder bc user session is important)",
  challenge_img: "",
  challenge_link: "",
  challenge_name: "Make your own design",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Easy",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/testimonials-grid-section-Nnw6J7Un7",
  challenge_name: "grid-section",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Easy",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/huddle-landing-page-with-alternating-feature-blocks-5ca5f5981e82137ec91a5100",
  challenge_name: "landing page",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Easy",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/room-homepage-BtdBY_ENq",
  challenge_name: "room homepage",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Medium",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/todo-app-Su1_KokOW",
  challenge_name: "to do app",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Medium",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/launch-countdown-timer-N0XkGfyz-",
  challenge_name: "timer",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Medium",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/easybank-landing-page-WaUhkoDN",
  challenge_name: "landing page",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Hard",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/coding-bootcamp-testimonials-slider-4FNyLA8JL",
  challenge_name: "slider",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Hard",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/calculator-app-9lteq5N29",
  challenge_name: "calculator",
)
Challenge.create(
  c_type: "Front-end:",
  level: "Hard",
  challenge_description: "Front end mentor is for Improve your front-end coding skills by building real projects  by Solving real-world HTML, CSS and JavaScript challenges whilst working to professional designs. The challenges are selected by level",
  challenge_img: "",
  challenge_link: "https://www.frontendmentor.io/challenges/ip-address-tracker-I8-0yYAH0",
  challenge_name: "ip adresse tracker",
)
p "*" * 30
p "Seed finished"
p "Well done 🎉 🍺"
