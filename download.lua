local tArgs = {...}
if tArgs[1] == nil then
  print("Please type a url.")
  local url = read()
  local file = http.get(url)
  print("What would you like to download it as?")
  local filename = read()
  local f = fs.open(filename, "w")
  f.write(file.readAll)
  f.close()
  f = fs.open(filename, "r")
  print("showing the file...")
  print(f.readAll())
  while true do
    print("Is this correct? [Y/n]")
  
    local event, key = os.pullEvent( "key" ) -- limit os.pullEvent to the 'key' event
  
    if key == keys.y then
      print( "Downloaded "..filename.." from "..url.."." )
      break
    else
      print("retrying...")
      dofile("download")
  end
else
  if (tArgs[2] == "as") and (tArgs[3] ~= nil) then
    local file = http.get(tArgs[1])
    local f = fs.open(tArgs[3], "w")
    f.write(file.readAll)
    f.close()
    f = fs.open(filename, "r")
    print("showing the file...")
    print(f.readAll())
    while true do
      print("Is this correct? [Y/n]")
  
      local event, key = os.pullEvent( "key" ) -- limit os.pullEvent to the 'key' event
  
      if key == keys.y then
        print( "Downloaded "..filename.." from "..url.."." )
        break
      else
        print("retrying...")
        dofile("download")
      end
    end
  end
end
