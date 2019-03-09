term.clear()
term.setCursorPos(1,1)
print("Would you like to install an app or an os?")
local oora = read()
if oora == "app" then
  dofile("store")
elseif oora == "os" then
  dofile("installos")
else
  term.setTextColor(colors.red)
  print("Choose os or app.")
  term.setTextColor(colors.white)
  dofile("install")
end
