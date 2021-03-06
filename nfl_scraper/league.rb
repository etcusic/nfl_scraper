require 'open-uri'
require 'nokogiri'
require 'pry'

class League
    extend BigModule::ClassMethods
    include BigModule::InstanceMethods

    @@all = []
    attr_accessor :name, :url, :teams, :conferences, :divisions

    def initialize(hash)  
        super
        @teams = []
        self.assign_teams
        self.assign_conferences
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

    def assign_teams
        Nokogiri::HTML(open(@url)).css("ul.d3-o-footer__panel-links li a").each do |tag|
            if tag.attribute('data-link_type').value == "_all-teams"
                hash = {}
                hash[:name] = tag.attribute('data-link_name').value
                hash[:roster_url] = tag.attribute('href').value + "team/players-roster/"
                initialize_team(hash)
            end
        end
    end
    
    def initialize_team(hash)
        arg_hash = {name: hash[:name], url: hash[:roster_url], league: self}
        if !Team.all.detect{|t| t.name == arg_hash[:name]}
            new_team = Team.new(arg_hash)
            @teams << new_team
        end
    end    

    def assign_conferences
        self.teams.map.with_index do |team, i|
            i < (self.teams.length / 2) ? team.conference = @conferences[0] : team.conference = @conferences[1]
        end
    end

    # def assign_divisions

    # end
end