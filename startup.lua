term.clear()
term.setCursorPos(1,1)
local main = http.get("https://raw.githubusercontent.com/l-7777777/lytim/DoorOS/main.lua")
local mainf = fs.open("main", "w")
mainf.write(main.readAll())
mainf.close()
if pass == nil then
  print("Choose a password.")
  term.setBackgroundColor(colors.gray)
  print("                             ")
  local input = read("●")
  local pass = input
  print("Press any key to continue...")
  os.pullEvent("key")
else
  while true do
    print("Enter password")
    term.setBackgroundColor(colors.gray)
    print("                             ")
    local input = read("●")
    if input == pass then
      shell.run("main")
    else
      print("Incorrect password.")
      sleep(2)
      shell.run("startup")
    end
  end
end
