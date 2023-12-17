local chat_color = minetest.settings:get("chat_color") or "grey"

minetest.register_on_chat_message(function(name, message)
    -- Change the color of the message here.
    local new_message = "<"..name.."> "..message
    local colored_message = minetest.colorize(chat_color, new_message)

    -- Send the colored message.
    minetest.chat_send_all(colored_message)

    -- Return true to prevent the original message from being sent.
    return false
end)
