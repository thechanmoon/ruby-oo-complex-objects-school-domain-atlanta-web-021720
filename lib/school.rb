# code here

# def game_hash
#     {
#       away: { team_name: 'Charlotte Hornets',
#               colors: %w[Turquoise Purple],
#               players: [
#                 { player_name: 'Jeff Adrien',
#                   number: 4,
#                   shoe: 18,
#                   points: 10,
#                   rebounds: 1,
#                   assists: 1,
#                   steals: 2,
#                   blocks: 7,
#                   slam_dunks: 2 },
#                 { player_name: 'Bismack Biyombo',
#                   number: 0,
#                   shoe: 16,
#                   points: 12,
#                   rebounds: 4,
#                   assists: 7,
#                   steals: 22,
#                   blocks: 15,
#                   slam_dunks: 10 },
#                 { player_name: 'DeSagna Diop',
#                   number: 2,
#                   shoe: 14,
#                   points: 24,
#                   rebounds: 12,
#                   assists: 12,
#                   steals: 4,
#                   blocks: 5,
#                   slam_dunks: 5 },
#                 { player_name: 'Ben Gordon',
#                   number: 8,
#                   shoe: 15,
#                   points: 33,
#                   rebounds: 3,
#                   assists: 2,
#                   steals: 1,
#                   blocks: 1,
#                   slam_dunks: 0 },
#                 { player_name: 'Kemba Walker',
#                   number: 33,
#                   shoe: 15,
#                   points: 6,
#                   rebounds: 12,
#                   assists: 12,
#                   steals: 7,
#                   blocks: 5,
#                   slam_dunks: 12 }
#               ] },
#       home: { team_name: 'Brooklyn Nets',
#               colors: %w[Black White],
#               players: [
#                 { player_name: 'Alan Anderson',
#                   number: 0,
#                   shoe: 16,
#                   points: 22,
#                   rebounds: 12,
#                   assists: 12,
#                   steals: 3,
#                   blocks: 1,
#                   slam_dunks: 1 },
#                 { player_name: 'Reggie Evans',
#                   number: 30,
#                   shoe: 14,
#                   points: 12,
#                   rebounds: 12,
#                   assists: 12,
#                   steals: 12,
#                   blocks: 12,
#                   slam_dunks: 7 },
#                 { player_name: 'Brook Lopez',
#                   number: 11,
#                   shoe: 17,
#                   points: 17,
#                   rebounds: 19,
#                   assists: 10,
#                   steals: 3,
#                   blocks: 1,
#                   slam_dunks: 15 },
#                 { player_name: 'Mason Plumlee',
#                   number: 1,
#                   shoe: 19,
#                   points: 26,
#                   rebounds: 11,
#                   assists: 6,
#                   steals: 3,
#                   blocks: 8,
#                   slam_dunks: 5 },
#                 { player_name: 'Jason Terry',
#                   number: 31,
#                   shoe: 15,
#                   points: 19,
#                   rebounds: 2,
#                   assists: 2,
#                   steals: 4,
#                   blocks: 11,
#                   slam_dunks: 1 }
#               ] }
#     }
#   end

class School
    
    #roster =
    # roster_test
    # {
    #     grade: [{name:"Lee"},{name:"Park"},{name:"Atlanta"}]
    # }
  
    attr_accessor :roster, :name

    def initialize(name)
        # @roster[grade].push(name)
        # @roster = {}
        @name = name
        @roster = 
        {
            # 10 => [ "Lee","Park","Atlanta"]
        }
    end
    
    def add_student(student,grade)
        # if(@roster[grade].length == 0)
        #     @roster[grade][0] = nameß
        # else
        
        if @roster[grade] == nil
            @roster[grade] = []
        end

        @roster[grade]<< student
        # end              
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        # @roster.each do |key|
        #     if @roster[key] != nil && @roster[key].is_a == true
        #         @roster[key] = @roster[key].sort
        #     end 
        # end   
        


        # @roster.each do |key|
        #     if @roster[key] != nil && @roster[key].is_a == true
        #         @roster[key] = @roster[key].sort
        #     end 
        # end 

        @roster.sort

        @roster.each do |key, value|
            if @roster[key] != nil && @roster[key].is_a?
                value.sort
                #@roster[key] = @roster[key].sort
            end 
        end 

        # return @roster 
    end    

    # def roster
    #     @roster
    # end    
end    

school = School.new("Bayside High School")
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)
#puts school.roster[10]
puts school.roster
puts "=============="
puts school.roster[10]