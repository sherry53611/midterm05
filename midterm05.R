## 使用%>%表達下列步驟

load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_df$birth_date <- Sys.Date() %>%
  format(format="%Y") %>%
  as.numeric() %>%
  `-`(straw_hat_df$age) %>%
  paste(.,straw_hat_df$birthday, sep = "-") %>%
  as.Date()
straw_hat_df$birth_date