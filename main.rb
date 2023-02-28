# sections helps generate the test scripts
# interger tests creation component
class Int_Tests
    def initialize(lower, upper)
        @lower = lower
        @upper = upper
    end
    def normal_test
    end
    def boundary_test
    end
    def extreme_test
    end
    def erroneous_test
    end
end
# float tests creation component
class Float_Tests
    def initialize(lower, upper)
        @lower = lower
        @upper = upper
    end
    def normal_test
    end
    def boundary_test
    end
    def extreme_test
    end
    def erroneous_test
    end
end
# string tests creation component
class String_Tests
    def initialize(sample_text)
        @sample_text = sample_text
    end
    def normal_test
    end
    def erroneous_test
    end
end
# end of script building help

# allows multithreading
class Test_Run
    def initialize(options_script)
        @options_script = options_script
    end
    def process_start
        return output
    end
end
# main controller
class Main
    def initialize(filepath)
        template = File.new("template.txt","r")
        if template
            data = template.readlines()
        end
    end
end

# startup componenet
Main.new(ARGV[0])