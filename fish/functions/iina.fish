if test (uname) = Darwin
  function iina --description "Open a media file in IINA"
    open -a IINA $argv[1]
  end
end