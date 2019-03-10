function Create(text, color, callback)
  minx, miny = term.getCursorPos()
  maxx = minx + (text.len() + 4)
  maxy = miny + 3
  term.setBackgroundColor(color)
  for i=0, (text.len() + 3), i++ do
    write(" ")
  end
  print(" ")
  print("  "..text.."  ")
  for i=0, (text.len() + 3), i++ do
    write(" ")
  end
  print(" ")
  event, button, x, y = os.pullEvent("mouse_click")
  if (x > (minx - 1)) and (x < (maxx + 1)) then
    if (y > (miny - 1)) and (y < (maxy + 1)) then
      callback()
    end
  end
end
