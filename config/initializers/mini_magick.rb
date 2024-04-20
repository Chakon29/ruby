require "mini_magick"

module MiniMagick
  class Tool
    def call(*args)
      MiniMagick::Utilities.tempfile("minimagick", *args) do |tempfile|
        tempfile.binmode
        tempfile.write args.join(" ")
        tempfile.close

        execute(tempfile.path)
      end
    end
  end
end