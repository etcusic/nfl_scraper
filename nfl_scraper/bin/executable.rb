#!/usr/bin/env ruby

# cd ~/Desktop
# Coding_Projects/Ruby/projects/nfl_scraper     #=> git init
# ruby executable.rb

require_relative '../lib/nfl_environment.rb'

attrs = {
    name: "NFL", 
    url: "https://www.nfl.com/network/", 
    conferences: ["AFC", "NFC"]
}

nfl = League.new(attrs)

app = Interaction.new(nfl)

