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
    "<a href='https://www.cdc.gov/iceid/docs/ICEID-2018-program-book-P.pdf'> ICEID 2018 </a>", 
    "<a href='https://www.netsci2018.com/'> NetSci 2018 </a>",
    "IAEH 2017",
    "<a href='https://www.nasbr.org'> NASBR 2017 </a>",
    "<a href='https://www.amnh.org/our-research/center-for-biodiversity-conservation/convening-and-connecting/student-conference-on-conservation-science-new-york-sccs-ny/sccs-ny-2017'> AMNH SCCB 2017 </a>"
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