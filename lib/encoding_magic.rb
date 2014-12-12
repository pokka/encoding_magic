# A simple library to remove magic comments for encoding to multiple ".rb" files

module StripMagicComment

  # Options :
  # 1 : Encoding
  # 2 : Path
  def self.process(options)

    # defaults
    encoding  = options[0] || "utf-8"
    directory = options[1] || Dir.pwd

    prefix = "-*- encoding : #{encoding} -*-\n"


    extensions = {
      'rb' => '# {text}',
      'rake' => '# {text}',
      'haml' => '-# {text}',
    }

    count = 0
    extensions.each do |ext, comment_style|
      rbfiles = File.join(directory ,'**', '*.'+ext)
      Dir.glob(rbfiles).each do |filename|
        file = File.new(filename, "r+")

        lines = file.readlines.to_a
        striped = 0
        # remove current encoding comment(s)
        while lines[0].respond_to?(:match) && lines[0].match(/#{encoding}/)
          lines.shift
          striped += 1
        end

        if striped > 0
          count += 1
        end

        file.pos = 0
        file.truncate(0)
        file.puts(lines.join)
        file.close
      end
    end

    puts "Magic comments striped for #{count} source files"
  end

end

class String

  def starts_with?(s)
    self[0..s.length-1] == s
  end

end
