require('mini.git').setup()
require('mini.diff').setup()
require('mini.statusline').setup()
require('mini.sessions').setup({
    -- File for local session (use `''` to disable)
    file = '.session.vim',
    -- Whether to force possibly harmful actions (meaning depends on function)
    force = { read = false, write = true, delete = true },
})

require('mini.surround').setup()
-- Add surrounding with `sa`
-- Delete surrounding with `sd`
-- Replace surrounding with `sr`
-- Find surrounding with `sf` or `sF` (move cursor right or left).
-- Highlight surrounding with `sh`

require('mini.starter').setup({
    -- Items to be displayed. Should be an array with the following elements:
    -- - Item: table with <action>, <name>, and <section> keys.
    -- - Function: should return one of these three categories.
    -- - Array: elements of these three types (i.e. item, array, function).
    -- If `nil` (default), default items will be used (see |mini.starter|).
    items = nil,
    -- Header to be displayed before items. Converted to single string via
    -- `tostring` (use `\n` to display several lines). If function, it is
    -- evaluated first. If `nil` (default), polite greeting will be used.

    header = "     .-.      _______                             .  '  *   .  . '\n" ..
             "    {}``; |==|_______D                              .  * * -+-\n" ..
             "    / ('        /|\\                             .    * .    '  *\n" ..
             "(  /  |        / | \\                                * .  ' .  .\n" ..
             " \\(_)_]]      /  |  \\                            *   *  .   .\n" ..
             "                                                   '   *\n",

    -- Footer to be displayed after items. Converted to single string via
    -- `tostring` (use `\n` to display several lines). If function, it is
    -- evaluated first. If `nil` (default), default usage help will be shown.
    footer = "El Psy Congroo.",

    -- Array  of functions to be applied consecutively to initial content.
    -- Each function should take and return content for 'Starter' buffer (see
    -- |mini.starter| and |MiniStarter.content| for more details).
    content_hooks = nil,
    -- Characters to update query. Each character will have special buffer
    -- mapping overriding your global ones. Be careful to not add `:` as it
    -- allows you to go into command mode.
    query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_-.',
    -- Whether to disable showing non-error feedback
    silent = false,
})
