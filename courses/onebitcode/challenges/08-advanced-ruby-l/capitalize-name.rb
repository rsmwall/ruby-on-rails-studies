string_capt = -> (name) {name.capitalize}

def capitalize_name(string_capt)
  puts string_capt.call('rafael')
  puts string_capt.call('ana')
end

capitalize_name(string_capt)