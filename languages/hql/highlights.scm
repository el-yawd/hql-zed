; HQL syntax highlighting queries

; Keywords
[
  "QUERY"
  "RETURN"
  "FOR"
  "IN"
  "MIGRATION"
  "DROP"
  "INDEX"
  "DEFAULT"
  "OPTIONAL"
  "Properties"
  "schema"
  "AS"
  "WHERE"
  "EXISTS"
  "ORDER"
  "RANGE"
  "UPDATE"
  "FIRST"
  "AGGREGATE_BY"
  "GROUP_BY"
  "PREFILTER"
] @keyword

; Boolean operators
[
  "AND"
  "OR"
  "GT"
  "GTE"
  "LT"
  "LTE"
  "EQ"
  "NEQ"
  "CONTAINS"
  "IS_IN"
] @operator.boolean

; Mathematical functions
[
  "ADD"
  "SUB"
  "MUL"
  "DIV"
  "POW"
  "MOD"
  "ABS"
  "SQRT"
  "LN"
  "LOG10"
  "LOG"
  "EXP"
  "CEIL"
  "FLOOR"
  "ROUND"
  "SIN"
  "COS"
  "TAN"
  "ASIN"
  "ACOS"
  "ATAN"
  "ATAN2"
  "PI"
  "E"
  "MIN"
  "MAX"
  "SUM"
  "AVG"
  "COUNT"
] @function.builtin

; Graph operations
[
  "OutE"
  "InE"
  "FromN"
  "ToN"
  "FromV"
  "ToV"
  "Out"
  "In"
  "ShortestPath"
  "ShortestPathDijkstras"
  "ShortestPathBFS"
  "ShortestPathAStar"
] @function.method

; Vector operations
[
  "SearchV"
  "SearchBM25"
  "AddV"
  "BatchAddV"
  "Embed"
  "RerankRRF"
  "RerankMMR"
] @function.special

; Creation operations
[
  "AddN"
  "AddE"
] @function.special

; Node/Edge/Vector prefixes
[
  "N::"
  "E::"
  "V::"
  "_::"
] @namespace

; Entity type markers
[
  "From:"
  "To:"
] @label

; Types
[
  "String"
  "Boolean"
  "F32"
  "F64"
  "I8"
  "I16"
  "I32"
  "I64"
  "U8"
  "U16"
  "U32"
  "U64"
  "U128"
  "ID"
  "Date"
] @type.builtin

; Constants
[
  "NOW"
  "NONE"
  "true"
  "false"
] @constant.builtin

; Literals
(string_literal) @string
(integer) @number
(float) @number

; Identifiers
(identifier) @variable
(identifier_upper) @type

; Comments
(comment) @comment

; Operators
[
  "<-"
  "=>"
  "::"
  "!"
  ".."
] @operator

; Punctuation
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  ","
  ":"
  "."
  "|"
] @punctuation.delimiter

; Special tokens
[
  "<"
  ">"
] @punctuation.bracket

; Macros
[
  "#[mcp]"
  "#[model"
] @attribute

; Order types
[
  "Asc"
  "Desc"
] @constant

; Query parameters
(param_def
  name: (identifier) @parameter)

; Field definitions
(field_def
  name: (identifier) @property)

; Mapping fields in object steps
(mapping_field
  (identifier) @property)

; Function calls
(math_function_call
  name: (math_function_name) @function.builtin)

; Schema versions
(schema_version
  (integer) @number.version)
