(ERROR) @error
(comment) @comment
(true) @boolean
(false) @boolean
(number) @number

(pair key: (identifier) @variable)
(pair key: (string) @string)

(pair value: (string) @string)

(list (string) @string)

(string_content (escape_sequence) @string.escape)
(string_content) @spell

(set (pair key: (identifier) @none))
(set (pair key: (string) @string))

"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket

(("\"" @conceal) (#set! conceal ""))
