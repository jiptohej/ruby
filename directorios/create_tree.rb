#! /usr/bin/env ruby
# encoding: utf-8

def create_tree(directories, parent='.')
  directories.each_pair do |dir, files|
    path = File.join(parent, dir)
    Dir.mkdir(path) unless File.exists?(path)
    files.each do |filename, contents|
      if filename.respond_to? :each_pair # es un subdirectorio
        create_tree(filename, path)
      else
        open(File.join(path, filename), 'w') {|f| f << contents || ' ' }
      end
    end
  end
end

data1=`cat data1`
print data1
create_tree data1
