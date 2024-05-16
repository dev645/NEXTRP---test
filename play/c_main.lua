-- Добавление той самой команды
addCommandHandler("chatmessage", function(cmd, r, g, b, ...)
	r, g, b = tonumber(r), tonumber(g), tonumber(b)

	if r and g and b then
		local message = table.concat({...}, " ")

		if utf8.len(message) > 0 then
			-- Если валидация пройдена, прерываем скрипт с отправкой сообщения
			return outputChatBox(message, r, g, b)
		end
	end

	-- Если скрипт не был прерван(валидация не пройдена), выводим ошибку
	outputChatBox("/chatmessage [r g b] [text]", 255, 0, 0)
end)