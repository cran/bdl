## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(bdl)
oldop <- options()
oldpar <- par()
options(tibble.print_min = 4L, tibble.print_max = 4L)

## ---- eval=FALSE--------------------------------------------------------------
#  get_levels()

## ---- eval=FALSE--------------------------------------------------------------
#  search_units(name = "wro")
#  search_units(name = "", level = 3)

## ---- eval=FALSE--------------------------------------------------------------
#  get_units(parentId = "000000000000", level = 5)

## ---- eval=FALSE--------------------------------------------------------------
#  search_subjects("lud")

## ---- eval=FALSE--------------------------------------------------------------
#  get_subjects()

## ---- eval=FALSE--------------------------------------------------------------
#  get_subjects(parentId = "K3")
#  get_subjects(parentId = "G7")

## ---- eval=FALSE--------------------------------------------------------------
#  get_variables("P2425")

## ---- eval=FALSE--------------------------------------------------------------
#  search_variables("samochod")

## ---- eval=FALSE--------------------------------------------------------------
#  search_variables("lud", subjectId = "P2425")

## ---- eval=FALSE--------------------------------------------------------------
#  get_data_by_unit(unitId = "023200000000", varId =  "3643")
#  get_data_by_unit(unitId = "023200000000", varId =  c("3643", "2137", "148190"))

## ---- eval=FALSE--------------------------------------------------------------
#  get_data_by_unit(unitId = "023200000000", varId = "3643", type = "label")

## ---- eval=FALSE--------------------------------------------------------------
#  get_data_by_variable("420", unitParentId = "011210000000", year = 2013:2016)
#  get_data_by_variable("420", unitLevel = "2", year = 2013:2016)

## ---- eval=FALSE--------------------------------------------------------------
#  df <- get_data_by_variable(varId = "3643", unitParentId = "010000000000")
#  summary(df)

## ----fig.height=5, fig.width=8, eval=FALSE------------------------------------
#  line_plot(data_type = "unit", unitId = "000000000000", varId = c("415","420"))

## ----fig.height=5, fig.width=8, eval=FALSE------------------------------------
#  pie_plot(data_type ="variable" ,"1", "2018",unitParentId="042214300000", unitLevel = "6")

## ----fig.height=5, fig.width=8, eval=FALSE------------------------------------
#  scatter_2var_plot(data_type ="variable" ,c("60559","415"), unitLevel = "2")

## ----fig.height=5, fig.width=8, eval=FALSE------------------------------------
#  generate_map(varId = "60559", year = "2017", unitLevel = 3)

## ---- eval=FALSE--------------------------------------------------------------
#  get_data_by_unit(unitId = c("023200000000", "020800000000"), varId =  c("3643", "2137", "148190"))

## ---- eval=FALSE--------------------------------------------------------------
#  get_data_by_variable(varId =c("3643","420"), unitParentId = "010000000000")

## ---- eval=FALSE--------------------------------------------------------------
#  get_panel_data(unitId = c("030210101000", "030210105000", "030210106000"), varId =  c("60270", "461668"), year = c(2015:2016))

## ---- eval=FALSE--------------------------------------------------------------
#  library(ggplot2)
#  df <- get_panel_data(unitId = c("030210101000", "030210105000", "030210106000"), varId =  c("60270", "461668"), year = c(2015:2018), ggplot = TRUE)
#  ggplot(df,aes(x=year, y= values, color = unit)) + geom_line(aes(linetype = variables)) + scale_color_discrete(labels = c("A", "B", "C")) + scale_linetype_discrete(labels = c("X", "Y"))

## ----include = FALSE----------------------------------------------------------
options(oldop)
par(oldpar)

