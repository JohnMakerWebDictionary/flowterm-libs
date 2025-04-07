
-- git.lua
local git = {}

-- Clone a repository
function git.clone(repo_url)
    os.execute("git clone " .. repo_url)
end

-- Check Git version
function git.version()
    local handle = io.popen("git --version 2>&1")
    local result = handle:read("*a")
    handle:close()
    return result
end

return git  -- Must return a table
