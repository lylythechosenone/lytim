function download(url, file)
  fdl = http.get(url)
  if fdl == nil then
    error("could not connect")
    return false
  else
    f = fs.open(file, "w")
    f.write(fdl.readAll())
    f.close()
    print("updated "..file)
  end
  return true
end
term.setBackgroundColor(colors.blue)
term.clear()
term.setCursorPos(1,1)
download("https://www.pastebin.com/raw/vyAZc6tj", "editor")
download("https://www.pastebin.com/raw/S2NTYEEg", "install")
download("https://www.pastebin.com/raw/7NkZgWA4", "dualBoot")
sleep(1)
term.clear()
term.setCursorPos(1,1)
print("Starting up...")
textutils.slowPrint("###################################################")
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
