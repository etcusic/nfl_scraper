# cd ~/Desktop
# Coding_Projects/Ruby/projects/nfl_scraper
# ruby executable.rb

require_relative 'nfl_environment.rb'

attrs = {
    name: "NFL", 
    url: "https://www.nfl.com/network/", 
    conferences: ["AFC", "NFC"]
}

nfl = kick_off(attrs)

show_teams_by_conference(nfl)


binding.pry