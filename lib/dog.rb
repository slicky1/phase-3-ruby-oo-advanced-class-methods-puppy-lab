class Dog

    attr_accessor :name
  
    @@all = []
  
    def self.all
      @@all
    end
  
    def save
      @@all << self
    end
  
    # original working solution
    def initialize_0(name)
      @name = name
      self.save # may need for < Ruby v 2.7
    end
  
    # original working solution
    def self.clear_all_0
      @@all = []
    end
  
    # original working solution
    def self.print_all_0
      @@all.each{|et| puts et.name}
    end
  
    # official solution version
    # which also works
    def initialize(name)
      @name = name
      save  # don't need self.save for >= Ruby v 2.7
    end
  
    # official solution version
    # which also works
    def self.clear_all
      @@all.clear # don't know the advantage of this vs. ... = []
    end
  
    # official solution version
    # which also works
    def self.print_all
      # puts @@all.map(&:name) - another way to solve, but more complex than needed for this example
      puts @@all.map{ |dog| dog.name } # requires more memory since it creates a new array?
    end
  
  
  end