# Команда добавления MCP-сервера для claude-code через stdio-транспорт
# с использованием Python-прокси.
#
# Scope (область хранения):
#   По умолчанию сервер пишется в local scope (~/.claude.json),
#   доступен только вам и только в текущем проекте, в git не попадает.
#   Для командной работы используйте --scope project — тогда сервер
#   будет записан в .mcp.json в корне проекта (см. mcp.json рядом).

claude mcp add --transport stdio 1c-md \
  # --scope project: (опционально) записать в .mcp.json вместо ~/.claude.json
  # --scope project \
  # --env PYTHONPATH: путь к репозиторию 1c_mcp
  --env PYTHONPATH=D:/rep/1c_mcp \
  # --env PYTHONIOENCODING: кодировка для взаимодействия с Python
  --env PYTHONIOENCODING=utf-8 \
  # --env MCP_ONEC_URL: адрес опубликованной на веб-сервере базы 1С
  --env MCP_ONEC_URL=http://localhost/my_base \
  # --env MCP_ONEC_USERNAME: имя пользователя 1С
  --env MCP_ONEC_USERNAME=<пользователь 1С> \
  # --env MCP_ONEC_PASSWORD: пароль пользователя 1С
  --env MCP_ONEC_PASSWORD=<пароль пользователя 1С> \
  # --: указывает, что далее следует команда для запуска
  # <путь к Python если нужно>python.exe -m src.py_server: команда запуска Python-прокси
  -- d:/rep/1c_mcp/venv/Scripts/python.exe -m src.py_server
