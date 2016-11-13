#!/usr/bin/env ruby

require 'fileutils'

platforms = ["ios", "macos", "tvos", "watchos"]
puts "Copying to SwiftyZeroMQ..."

for platform in platforms
  FileUtils.cp(
    "dist/#{platform}/lib/libzmq.a",
    "../SwiftyZeroMQ/Sources/libzmq-#{platform}.a"
  )
end