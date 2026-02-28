# Split-Plot Design — Box, Hunter & Hunter Example

This repository reconstructs and analyzes the split-plot example from Table 9.1 in
Statistics for Experimenters by George E. P. Box, J. Stuart Hunter and William G. Hunter.

## Purpose

To understand:

- Why the experiment is not a completely randomized design
- Why it is not a randomized block design
- How the correct identification of the experimental unit changes the ANOVA
- Why split-plot designs require multiple error terms

The emphasis is conceptual, not computational.

## Structure

- `report.qmd` — Full reconstruction and discussion
- `R/create_dataset.R` — Dataset recreation script

## Core Idea

What looks like a simple:

```
Temperature × Coating
```

factorial experiment is actually a split-plot design, because temperature is applied at the furnace-run level, not at the bar level.

Ignoring that hierarchy leads to incorrect F-tests.

## How to Run

1. Clone the repository:

```
git clone https://github.com/andreabz/split_plot.git
cd split_plot
```

2. Reproduce the R environment:

```
install.packages("renv")
renv::restore()
```

3. Render the report

```
quarto render report.qmd
```