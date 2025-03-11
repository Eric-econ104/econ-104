---
title: "codebook"
output: html_document
date: "2025-03-04"
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

---
title: "Dataset Overview"
author: "Your Name"
date: "`r Sys.Date()`"
output: html_document
---

## Dataset Overview

This dataset contains statistics on the number of Taiwanese citizens traveling abroad by destination from **2002 to 2024**.

## Variables

-   **首站抵達地 (First Destination)**\
    The region where travelers first arrived (e.g., **Asia, Europe**).

-   **細分 (Subdivision)**\
    Specific countries or territories (e.g., **Japan, Korea, Hong Kong**).

-   **2002 - 2024**\
    Annual travel numbers from **2002 to 2024**.

## Variable Types

| Variable                           | Type                 | Description                                                                                      |
|------------------------------------|----------------------|--------------------------------------------------------------------------------------------------|
| **首站抵達地 (First Destination)** | Categorical (String) | Region where travelers first arrived                                                             |
| **細分 (Subdivision)**             | Categorical (String) | Specific country or territory                                                                    |
| **2002 - 2024**                    | Numeric (Integer)    | Currently stored as **Strings** (due to commas), should be converted to **Numeric** for analysis |

------------------------------------------------------------------------

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
