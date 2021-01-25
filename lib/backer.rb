class Backer

    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        probacker = ProjectBacker.all.select { |probacker| probacker.backer == self}
        probacker.map {|probacker| probacker.project }
    end
end