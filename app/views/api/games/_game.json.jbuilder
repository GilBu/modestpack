json.extract! game, :id, :title, :price, :description, :sale, :platform, 
:operating_system, :developer, :publisher, :system_requirements, :links, 
:ratings, :rating_list

json.photoUrls game.screenshots.map { |file| url_for(file) }