require_relative 'source'
require 'pry'

def valid_ip_addresses(text)
	text.scan(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
end

def valid_mit_ip_addresses(text)
	valid_ip_addresses(text).select{|ip| ip =~ /^18\./}

	# Alternate method with only RegExp
	# text.scan(/18\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
	end

def non_mit_ip_addresses(text)
	valid_ip_addresses(text).select{|ip| ip !~ /^18\./}
end

def valid_phone_numbers(text)
	text.scan(/[2-9]{1}\d{2}-\d{3}-\d{4}|\s\d{3}-\d{4}/).uniq.map {|num| num.strip}
end

def area_codes(text)
	text.scan(/[2-9]{1}\d{2}-\d{3}-\d{4}/).uniq.map {|num| num = num[0,3]}
end

def email_addresses(text)
	text.scan(/\w+\@\w+.\w+/)
end

def zip_codes(text)
	text.scan(/\b\d{5}\b/).map {|zip| zip.strip}
end

def hex_colors(text)
	text.scan(/#[A-Fa-f0-9]{6}/).map {|color| color.delete('#')}
end