write("  ")
term.setBackgroundColor(colors.gray)
write("                                               ")
local color = ...
term.setCursorPos(3,2)
if color == "red" then
  term.setBackgroundColor(colors.red)
else
  term.setBackgroundColor(colors.blue)
end
textutils.slowPrint("                                               ")
term.setBackgroundColor(colors.black)
