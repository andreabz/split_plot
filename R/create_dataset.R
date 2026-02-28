# ============================================================================= #
# Split-Plot Example
# Source: Box, Hunter & Hunter - Statistics for Experimenters, (2005),
# Design, Innovation and Discovery
# Second Edition, Table 9.1
# ============================================================================= #

# create the dataset from Table 9.1
create_dataset <- function() {
  Temp <- rep(c(360, 370, 380, 380, 370, 360), each = 4) |> factor()
  Heat <- rep(1:6, each = 4) |> factor()
  Coat <- rep(c("C1", "C2", "C3", "C4"), times = 6) |> factor()
  y <- c(
    # Heat 1 (360 °C)
    67,
    73,
    83,
    89,
    # Heat 2 (370 °C)
    65,
    91,
    87,
    86,
    # Heat 3 (380 °C)
    155,
    127,
    147,
    212,
    # Heat 4 (380 °C)
    108,
    100,
    90,
    153,
    # Heat 5 (370 °C)
    140,
    142,
    121,
    150,
    # Heat 6 (360 °C)
    33,
    8,
    46,
    54
  )

  df <- data.frame(Heat, Temp, Coat, y)
  df
}
