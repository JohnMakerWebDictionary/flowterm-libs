-- git.lua
local git = {}

function git.clone(url)
    -- Escape special characters and wrap in quotes
    local safe_url = string.format("%q", url)
    os.execute("git clone " .. safe_url)
end

return git
