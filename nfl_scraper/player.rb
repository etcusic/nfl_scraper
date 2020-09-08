require 'open-uri'
require 'nokogiri'
require 'pry'

class Player
    extend BigModule::ClassMethods
    include BigModule::InstanceMethods

    @@all = []
    attr_accessor :name, :team, :number, :position, :height, :weight, :age, :url

    def initialize(hash)
        super
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end