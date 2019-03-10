term.clear()
term.setCursorPos(1,1)
print("Would you like to install an app or an os?")
print("")
term.setBackgroundColor(colors.green)
print("       ")
print("  App  ")
print("       ")
term.setCursorPos(9, 3)
term.setBackgroundColor(colors.blue)
print("      ")
term.setCursorPos(9, 4)
print("  OS  ")
term.setCursorPos(9, 5)
print("      ")
local event, button, x, y = os.pullEvent("mouse_click")
if (y > 2) and (y < 6) then
  if x < 8 then
    shell.run("store")
  elseif (x > 8) and (x < 16) then
    shell.run("installos")
  end
end
