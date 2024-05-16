-- Обработчик события подключения игрока
addEventHandler("onPlayerJoin", root, function()
	-- Получаем имя игрока
	local playerName = getPlayerName(source)

	-- Создаем сообщение, строку со встроенным именем игрока
	local message = string.format("Добро пожаловать %s!", playerName)

	-- Выводим сообщение для всех
	outputChatBox(message, root)

	-- Спавним игрока
	spawnPlayer(source, 0, 0, 4)
	fadeCamera(source, true)
	setTimer(setCameraTarget, 10, 1, source, source)
end)