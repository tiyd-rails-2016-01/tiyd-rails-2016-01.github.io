def make_a_contact(first_name: nil, last_name: nil, company_name: nil)
  puts "|-----------------------"
  puts "| #{first_name} #{last_name}" if first_name || last_name
  puts "| (#{company_name})" if company_name
  puts "|-----------------------"
end

make_a_contact(company_name: "The Iron Yard")
