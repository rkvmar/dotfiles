return {
  s(
    { trig = ";kanji", dscr = "Kanji template for my kanji website" },
    fmt(
      [[
      {
        kanji: "<>",
        meaning: "",
        reading: "",
      },
      ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),
}
