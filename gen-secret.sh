#!/usr/bin/env ruby

name = ENV['SECRET_NAME']

File.readlines('secret').each do |k|
  next if k.strip.empty?
  puts """        - name: #{k.strip}
          valueFrom:
            secretKeyRef:
              key: #{k.strip}
              name: #{name.strip}
  """.rstrip
end
