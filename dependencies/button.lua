function makeButton(text, color)
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
end
