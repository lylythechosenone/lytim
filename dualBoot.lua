term.clear()
term.setCursorPos(1,1)
print("Choose an os [lytim or "..altos.."]")
local os = read()
if os == "lytim" then
  dofile("main")
elseif os == altos then
  dofile("altstartup")
else
  term.setTextColor(colors.red)
  print("No os called "..os.." found")
end
