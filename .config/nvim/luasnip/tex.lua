return {
    s({ trig = ";a", snippetType = "autosnippet" }, {
        t("\\alpha"),
    }),
    s({ trig = ";b", snippetType = "autosnippet" }, {
        t("\\beta"),
    }),
    s({ trig = ";g", snippetType = "autosnippet" }, {
        t("\\gamma"),
    }),

    s(
        { trig = "eq", dscr = "A LaTeX equation environment" },
        fmt(
            [[
      \begin{equation}
          <>
      \end{equation}
    ]],
            { i(1) },
            { delimiters = "<>" }
        )
    ),
    s(
        { trig = ";init", dscr = "init latex", snippetType = "autosnippet" },
        fmt(
            [[
            \documentclass{article}
            \usepackage{geometry}
            \geometry{margin=0.7in}
            \parskip = \baselineskip
            \setlength\parindent{0pt}
            \usepackage{graphicx}
            \usepackage{amsmath}
            \usepackage{tikz}
            \usetikzlibrary{regular-polygon}
            \usepackage{float}

            \title{}
            \author{}
            \date{}

            \begin{document}
            \maketitle
            <>

            \end{document}
    ]],
            { i(1) },
            { delimiters = "<>" }
        )
    ),
    s(
        { trig = ";img", dscr = "image", snippetType = "autosnippet" },
        fmt(
            [[
            \begin{figure}
              \includegraphics[width=\linewidth]{<>}
              \caption{}
              \label{}
            \end{figure}
    ]],
            { i(1) },
            { delimiters = "<>" }
        )
    ),
}
