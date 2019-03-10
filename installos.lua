term.clear()
term.setCursorPos(1,1)
print("oses")
print("")
term.setBackgroundColor(colors.green)
print("         ")
print("  Axiom  ")
print("         ")
print("")
local event, button, x, y = os.pullEvent("mouse_click")
if (y > 2) and (y < 6) then
  if x < 9 then
    shell.run("axiominstaller")
  end
end
