# Relies on Preview, so this is macOS only.
if test (uname) = Darwin
  function man-pdf --description "View a man page as a PDF in macOS's Preview"
    man -t $argv[1] | open -f -a Preview
  end
end
