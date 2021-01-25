class Project
    attr_reader :title 
    def initialize(title)
        @title = title 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        probacker = ProjectBacker.all.select {|probacker| probacker.project == self}
        probacker.map {|probacker| probacker.backer}
    end
end