os.loadAPI("button")
term.clear()
term.setCursorPos(1,1)
print("Would you like to install an app or an os?")
function app()
  shell.run("store")
end
function os()
  shell.run("os")
end
print("")
button.create("App", colors.green, app)
print("")
button.create("OS", colors.blue, os)
