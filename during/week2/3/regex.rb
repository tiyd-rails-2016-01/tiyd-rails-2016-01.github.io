def find_person(name, array)
  array.select {|n| n.match(/\b#{name}\b/i)}
end
