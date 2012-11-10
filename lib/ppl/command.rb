
module Ppl
  module Command

    def self.load
      Dir[File.join(File.dirname(__FILE__), "command", "*.rb")].each do |file|
        require file
      end
    end

    def self.run(command, arguments=[])

      options = {
        :path => "/home/h2s/doc/contacts"
      }

      command = Ppl::Command::List.new(arguments, options)
      command.send("index")
    end

  end
end
