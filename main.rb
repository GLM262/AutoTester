# sections helps generate the test scripts
# interger tests creation component type 1
class Int_Test_Node
    def initialize(lower, upper, dependency)
        @lower = lower
        @upper = upper
        if not dependency.nil?
            @dependency = dependency
        end
    end
    def normal_test
    end
    def in_boundary_test
    end
    def out_boundary_test
    end
    def extreme_test
    end
    def float_erroneous_test
    end
    def string_erroneous_test
    end
end
# float tests creation component type 2
class Float_Test_Node
    def initialize(lower, upper, dependency)
        @lower = lower
        @upper = upper
        if not dependency.nil?
            @dependency = dependency
        end
    end
    def normal_test
    end
    def in_boundary_test
    end
    def out_boundary_test
    end
    def extreme_test
    end
    def erroneous_test
    end
end
# string tests creation component 
# type 3
class String_Test_Node
    def initialize(sample_text, dependency)
        @sample_text = sample_text
        if not dependency.nil?
            @dependency = dependency
        end
    end
    def normal_test
    end
    def erroneous_test
    end
end
# end of script building help
# parses the template and builds the script
class Template_Parse
    def initialize(template_file)
        template = template_file.readlines()
        line_counter = 1
        name = ""
        type = 0
        options = []
        parent = []
        for line in template
            if not(line == "\n" or line == "")
                if line_counter == 5
                    #does object and map handling
                    line_counter = 1
                end
                if line_counter == 1
                    name = line
                    line_counter += 1
                elsif line_counter == 2
                    if line.downcase() == "int"
                        type = 1
                    elsif line.downcase() == "float"
                        type = 2
                    elsif line.downcase() == "string"
                        type = 3
                    else
                        puts "Error: unknown type on line #{line_counter} in template"
                    end
                    line_counter += 1
                elsif line_counter == 3
                    if line.match("\\\[")
                    end
                    line_counter += 1
                elsif line_counter == 4
                    if line == "nil"
                        parent.append(line)
                    end
                    line_counter += 1 
                end
            end
        end
    end
end

# allows multithreading
class Test_Run
    def initialize(options_scripts)
        @options_scripts = options_scripts
    end
    def process_start
        Open3.popen3()
        return output
    end
end
# main controller
class Main
    def initialize(code_path, template_path)
        if code_path.nil?
            puts "Error: path to code is empty"
        end
        if template_path.nil?
            puts "Error: path to template is empty"
            return
        end
        # section handling code input
        # should allow ingesting non-compiled files and running on the fly
        # section handling template input
        template_file = File.new(template_path,"r")
        if template_file
            options_scripts = Template_Parse.new(template_file)
        end
    end
end

# startup componenet
Main.new(ARGV[0],ARGV[1])