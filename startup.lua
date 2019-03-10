function download(url, file)
  fdl = http.get(url)
  if fdl == nil then
    print("Could not connect to "..url..". Exiting...")
    sleep(1)
    os.shutdown()
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
download("https://raw.githubusercontent.com/l-7777777/lytim/master/update.lua", "update")
download("https://raw.githubusercontent.com/l-7777777/lytim/master/install.lua", "install")
download("https://raw.githubusercontent.com/l-7777777/lytim/master/installos.lua", "installos")
download("https://raw.githubusercontent.com/l-7777777/lytim/master/oses/axiominstaller.lua", "axiominstaller")
download("https://raw.githubusercontent.com/l-7777777/lytim/master/download.lua", "download")
download("https://raw.githubusercontent.com/l-7777777/lytim/master/newTab.lua", "newTab")
download("https://raw.githubusercontent.com/l-7777777/lytim/master/dualBoot.lua", "dualBoot")
download("https://raw.githubusercontent.com/l-7777777/lytim/master/dependencies/button.lua", "button")
sleep(1)
term.clear()
term.setCursorPos(1,1)
print("Starting up...")
shell.run("progressbar", "red")
sleep(1)
term.clear()
term.setCursorPos(1,1)
if dualBoot == nil then
  dualBoot = false
elseif dualBoot == true then
  dofile("dualBoot")
else
  dofile("main")
end
