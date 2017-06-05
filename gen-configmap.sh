#!/usr/bin/env ruby

name = ENV['CONFIGMAP_NAME']

File.readlines('configmap').each do |k|
  next if k.strip.empty?
  puts """        - name: #{k.strip}
          valueFrom:
            configMapKeyRef:
              key: #{k.strip}
              name: #{name.strip}
  """.rstrip
end
