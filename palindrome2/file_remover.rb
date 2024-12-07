#!/usr/bin/env ruby

require 'fileutils'

def file_remove(file)

    if File.exist?(file)
        FileUtils.rm(file)
        puts "File was removed"
    else
        puts "File does not exist"
    end

end