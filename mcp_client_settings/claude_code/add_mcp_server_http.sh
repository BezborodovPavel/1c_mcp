# Команда добавления MCP-сервера для claude-code через HTTP-транспорт.
# Альтернатива ручному редактированию .mcp.json — быстро добавляет сервер через CLI.
#
# Scope (область хранения):
#   По умолчанию сервер пишется в local scope (~/.claude.json),
#   доступен только вам и только в текущем проекте, в git не попадает.
#   Для командной работы используйте --scope project — тогда сервер
#   будет записан в .mcp.json в корне проекта (см. mcp.json рядом).

# Local scope (по умолчанию, только для вас):
claude mcp add --transport http 1c-md http://localhost/my_base/hs/mcp/

# Project scope (запись в .mcp.json, для шаринга через git):
# claude mcp add --transport http --scope project 1c-md http://localhost/my_base/hs/mcp/
