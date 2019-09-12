#!/usr/bin/ruby

# ------------------------------------------------------------
#   Author: Alex Colombari (http://github.com/alexcolombari)
#   Date: 2019-09-12
#   Create random directories
# ------------------------------------------------------------

require 'fileutils'

def randomName(number = 5)
    charset = Array('a'..'z') + Array('0'..'9')
    Array.new(number) { charset.sample }.join
end

def createFolders()
    folderNumber = 0..2

    for i in folderNumber
        folderName = randomName()
        FileUtils.mkdir_p(folderName)
        puts "Directory " + folderName + " created!"
    end
end


if __FILE__ == $0
    createFolders()
end
