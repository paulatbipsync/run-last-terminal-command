tell application "Terminal"
    repeat with w in windows
        repeat with t in tabs of w
            if selected in t then
                do script "!!" in t
                quit
            end if
        end repeat
    end repeat
    do script "!!"
end tell
