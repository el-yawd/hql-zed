; HQL syntax highlighting queries

; Keywords
[
  "QUERY"
  "RETURN"
  "FOR"
  "IN"
  "MIGRATION"
  "DROP"
  "DEFAULT"
  "Properties"
  "schema::"
  "AS"
  "WHERE"
  "EXISTS"
  "ORDER"
  "RANGE"
  "UPDATE"
  "AGGREGATE_BY"
  "GROUP_BY"
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
  "Out"
  "In"
  "InE"
  "OutE"
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
] @type.builtin

; Constants
[
  "true"
  "false"
] @constant.builtin

; Special nodes that don't have direct terminal equivalents
(index) @keyword
(none) @constant.builtin
(now) @constant.builtin
(date_type) @type.builtin
(ID_TYPE) @type.builtin
(first) @keyword
(asc) @constant
(desc) @constant

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

; Spread operator
(spread_object) @operator

; Macros
[
  "#["
] @attribute

; Query parameters
(param_def
  (identifier) @parameter)

; Field definitions
(field_def
  (identifier) @property)

; Mapping fields in object steps
(mapping_field
  (identifier) @property)

; Function calls
(math_function_call
  (math_function_name) @function.builtin)

; Schema versions
(schema_version
  (integer) @number)
