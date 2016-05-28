#const _ggplot2_palette = (:gs6, :navy, :maroon, :forest_green, :dkorange, :teal,
#                        :cranberry, :lavender, :khaki, :sienna, :emidblue,
#                        :emerald, :brown, :erose, :gold, :bluishgray)

const _ggplot2_colors =  Dict{Symbol, Tuple}(
                       :grey30 => (229, 229, 229),
                       )

_get_ggplot2_color(c) = _255_to_1(c, _ggplot2_colors)


add_theme(:ggplot2_base,
    bglegend = _invisible,
    fg       = :white,
    fglegend = _invisible,
    fgguide  = :black)

add_theme(:ggplot2,
          base = :ggplot2_base,
          bginside = _get_ggplot2_color(:grey30),
          fg       = :white,
          fgtext   = :gray,
          fgguide  = :black)

add_theme(:ggplot2_grey, base = :ggplot2)

add_theme(:ggplot2_bw,
          base = :ggplot2_base,
          bginside = :white,
          fg       = :black,
          fgtext   = :black,
          fgguide  = :black)
