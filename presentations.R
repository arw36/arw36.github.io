library(dplyr)
library(tibble)
library(DT)

# workshops
d <- tibble(
  title = c(
    "A systematic review of environmental survival across 25 viral families",
    "The multilayer networks of the flavivirus community",
    "<a href='https://www.youtube.com/watch?v=E2JVdzyjl8s&feature=youtu.be'> Using Networks to Study Zoonotic Pathogens </a>",
    "A comparative analysis of viral richness and viral sharing in cave-roosting bats",
    "Viral Sharing in the Bat Metacommunity"
  ),
  venue = c(
    "ICEID 2018", 
    "NetSci 2018",
    "IAEH 2017",
    "NASBR 2017",
    "AMNH SCCB 2017"
  ),
  type = c(
    "poster", 
    "oral", 
    "webinar", 
    "oral",
    "poster"
  ),
  date = c(
    "20180927",
    "20180611",
    "20171218",
    "20171021", 
    "20171011"
  )
)


d %>%
  mutate(date = as.Date(date, format = "%Y%m%d")) %>%
  arrange(desc(date)) %>%
  select(date, title, venue, type) %>%
  datatable(escape = F, options = list(pageLength = 50), rownames = FALSE) %>%
  saveWidget(file = "index.html", title = "Anna's presentations")

View(d)