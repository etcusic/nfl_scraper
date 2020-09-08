require 'open-uri'
require 'nokogiri'
require 'pry'

module BigModule
    module ClassMethods
        def self.all

        end

        def self.clear
            
        end
    end

    module InstanceMethods
        def initialize(hash)
            hash.each{|key, value| self.send(("#{key}="), value)}
        end
    end
    
end