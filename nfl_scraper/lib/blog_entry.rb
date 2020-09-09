









def show_teams_by_conference(league)  #=> and alphabetically
    afc = league.teams.select{|team| team.conference == "AFC"} .sort_by(&:name)
    nfc = league.teams.select{|team| team.conference == "NFC"} .sort_by(&:name)
    puts "       (AFC)            |         (NFC)         "
    
    i = 0
    while i < afc.length
        x = 21 - afc[i].name.length 
        puts "#{i+1}. #{afc[i].name + x.times{puts " "}}| #{i+17}. #{nfc[i].name}"
        i+=1
    end
end



# def show_teams_by_conference(league)  #=> and alphabetically
#     afc = league.teams.select{|team| team.conference == "AFC"} .sort_by(&:name)
#     nfc = league.teams.select{|team| team.conference == "NFC"} .sort_by(&:name)
#     puts "       (AFC)            |         (NFC)         "
    
#     i = 0
#     while i < afc.length
#         x = 21 - afc[i].name.length
#         i < 9 ? x : x-=1
#         spaces = Array.new(x, " ").join('')
#         puts "#{i+1}. #{afc[i].name + spaces}| #{i+17}. #{nfc[i].name}"
#         i+=1
#     end
# end