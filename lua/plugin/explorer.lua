local hidden_is_visible = 0

function FilterNodes(payload)
    print(vim.inspect(payload))
end

function DeleteNode(payload)
    local option_prompt = vim.fn.input("Delete? (Y or N)", "", "option")
    if option_prompt == "Y" then
        local nodepath = payload.dir .. "/" .. payload.node
        vim.cmd("!rm -rf " .. nodepath)
        print(nodepath .. " Deleted")
    end
end

require("netrw").setup({
  icons = {
    symlink = '',
    directory = '',
    file = '',
  },
  use_devicons = true,
  mappings = {
    -- Create File
    ['f'] = function(payload)
        local filename = vim.fn.input("File: ", "", "file")
        if filename ~= "" then
            print(filename .. " Created!")
            local newfilepath = payload.dir .. "/" .. filename
            vim.cmd("!touch " .. newfilepath)
        end
    end,
    -- Create Directory
    ['d'] = function(payload)
        local dirname = vim.fn.input("Directory: ", "", "dir")
        if dirname ~= "" then
            local newdirpath = payload.dir .. "/" .. dirname
            print(dirname .. " Created!")
            vim.cmd("!mkdir " .. newdirpath)
        end
    end,
    -- Delete File or Directory
    ['<Del>'] = DeleteNode,
    ['D'] = DeleteNode,
    -- Toggle Hidden
    ['t'] = function(_)
        if hidden_is_visible == 0 then
            vim.g.netrw_hide = 1
            hidden_is_visible = 1
        end
        if hidden_is_visible == 1 then
            vim.g.netrw_hide = 0
            hidden_is_visible = 0
        end
    end,
    -- Filter List
    ['<C-f>'] = FilterNodes,
    ['='] = FilterNodes,
    -- Rename Node
    ['r'] = function(payload)
        local nodepath = payload.dir .. "/" .. payload.node
        local name = ""

        if vim.fn.isdirectory(nodepath) == 1 then
            name = vim.fn.input("Directory: ", "", "dir")
        else
            name = vim.fn.input("File: ", "", "file")
        end

        if name ~= "" then
            local newnodepath = payload.dir .. "/" .. name
            vim.cmd("!mv " .. nodepath .. " " .. newnodepath)
        end
    end,
  },
})

