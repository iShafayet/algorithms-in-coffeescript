
@linearSearch = (list, needle)->
  for item, index in list
    return index if item is needle
  return -1

