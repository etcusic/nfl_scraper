require 'pry'
require_relative 'module.rb'
require_relative 'league.rb'
require_relative 'team.rb'
require_relative 'player.rb'


def show_teams_by_conference(league)  #=> and alphabetically
    afc = league.teams.select{|team| team.conference == "AFC"}
    nfc = league.teams.select{|team| team.conference == "NFC"}
    
    i = 0
    while i < afc.length
        spaces = Array.new((21 - afc[i].name.length), " ")#.join(" ")
        binding.pry
        puts "#{i+1}. #{afc[i].name}|  #{i+16}. #{nfc[i].name}"
        i+=1
    end
end

#def assign_divisions
 
# end

def kick_off(hash)
    new_league = League.new(hash)
end

#METHODS:
#list_team_names => with numbers / from an array
#separate_by_conferences
#separate_by_divisions
#get_team_by_category => offense, defense, special teams
#team_weight
#team_age
#top_ten
#compare_blank_with_other_team


#run_simulation => Titans win every time