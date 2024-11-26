library(dplyr)
library(atrrr)

# Authenticate first (switch out with your username)
bsky_username <- "samrit24.bsky.social"

# If you already have an app password:
bsky_app_pw <- "Nibiru#2442"
auth(user=bsky_username, password=bsky_app_pw)

# Or be guided through the process
auth()

# Get the people you follow
f <- get_follows(actor=bsky_username, limit=Inf)

# Get just their handles
fh <- f$actor_handle

# Get who your follows are following
ff <-
  fh |>
  lapply(get_follows, limit=100) |>
  setNames(fh)

# Make it a data frame
ffdf <- bind_rows(ff, .id="follow")

# Get counts, removing ppl you already follow
ffcounts <-
  ffdf |>
  count(actor_handle, sort=TRUE) |>
  anti_join(f, by="actor_handle") |>
  filter(actor_handle!="handle.invalid")

# Join back to account info, add URL
ffcounts <-
  ffdf |>
  distinct(actor_handle, actor_name) |>
  inner_join(x=ffcounts, y=_, by="actor_handle") |>
  mutate(url=paste0("https://bsky.app/profile/",
                    actor_handle))


# Optional, clean up and create a nice table
library(gt)
library(glue)
top <- 100L
ffcounts |>
  head(top) |>
  rename(Handle=actor_handle, N=n, Name=actor_name) |>
  mutate(Handle=glue("[{Handle}]({url})")) |>
  mutate(Handle=lapply(Handle, gt::md)) |>
  select(-url) |>
  gt() |>
  tab_header(
    title=md(glue("**My top {top} follows' follows**")),
    subtitle="Collected November 21, 2024") |>
  tab_style(
    style="font-weight:bold",
    locations=cells_column_labels()
  ) |>
  cols_align(align="left") |>
  opt_row_striping(row_striping = TRUE)

### ----------------------------------------------------------------------------

library(tidyverse)
my_followers <- get_followers("samrit24.bsky.social", limit = Inf) |> 
  # remove columns containing more complex data
  select(-ends_with("_data"))
my_follows <- get_follows("samrit24.bsky.social", limit = Inf) |> 
  select(-ends_with("_data"))
not_yet_follows <- my_followers |> 
  filter(!actor_handle %in% my_follows$actor_handle)


follows_of_follows <- my_follows |>
  pull(actor_handle) |> 
  # iterate over follows getting their follows
  map(function(handle) {
    get_follows(handle, limit = Inf, verbose = FALSE) |>
      mutate(from = handle)
  }, .progress = interactive()) |> 
  bind_rows() |> 
  # not sure what this means
  filter(actor_handle != "handle.invalid")

  

