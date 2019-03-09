function download(url, file)
  fdl = http.get(url)
  if fdl == nil then
    print("Could not connect to "..url..". Exiting...")
    sleep(1)
    os.shutdown
  else
    f = fs.open(file, "w")
    f.write(fdl.readAll())
    f.close()
    print("updated "..file)
  end
end
term.setBackgroundColor(colors.blue)
term.clear()
term.setCursorPos(1,1)
download("https://raw.githubusercontent.com/l-7777777/lytim/master/startup.lua", "startup")
download("https://www.pastebin.com/raw/vyAZc6tj", "editor")
download("https://raw.githubusercontent.com/l-7777777/lytim/master/install.lua", "install")
download("https://www.pastebin.com/raw/7NkZgWA4", "dualBoot")
sleep(1)
term.clear()
term.setCursorPos(1,1)
print("Starting up...")
dofile("progressbar")
sleep(1)
term.clear()
term.setCursorPos(1,1)
if dualBoot == nil then
  local dualBoot = false
elseif dualBoot == true then
  dofile("dualBoot")
else
  dofile("main")
end
