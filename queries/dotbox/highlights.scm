(ERROR) @error
(comment) @comment
(true) @boolean
(false) @boolean
(number) @number

(pair key: (identifier) @label)
(pair key: (string) @label)

(string) @string
(string_content (escape_sequence) @string.escape)
(string_content) @spell

"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket

(("\"" @conceal) (#set! conceal ""))
