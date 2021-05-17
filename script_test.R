library(PerformanceAnalytics)
library(readr)
library(tidyr)
library(dplyr)


api_clean2 <- api_clean %>% 
  drop_na()

api_clean2 %>% 
  select_if(is.numeric) %>% 
  chart.Correlation()

write_csv(api_clean2,"api_clean2.csv", col_names = TRUE)


str(epa_clean)

skimr::skim(api_clean2)

library(ggplot2)

count(epa_clean$FacilityWaterType)
count(epa_clean$MRL), arrange(desc())
arrange(desc(count(epa_clean$MRL)))

epa_clean %>% 
  summarise()

skimr::skim(epa_clean)

library(ggplot2)


library(ggplot2)

ggplot(epa_clean) +
 aes(x = Date, fill = Contaminant) +
 geom_histogram(bins = 30L) +
 scale_fill_hue(direction = 1) +
 labs(subtitle = "Contaminants per State") +
 theme_minimal() +
 facet_wrap(vars(State))

library(skimr)

count(epa_clean$FacilityWaterType)
count(epa_clean$MRL)

df_contaminants <- epa_clean %>% 
  filter(State == "NY", "TX") %>% 
  filter(FacilityWaterType = "GW") %>% 
  
df_contaminants
