# resampling-datamation

Goal: use/adapt [datamations](https://github.com/seankross/datamations/) to create an animated explainer of resampling (e.g. as part of the bootstrap)

Progress:

2021-03-01

- first day of teaching resampling, wouldn't it be nice if I had some sort of animated thing
- makes me think of the Datamations presentation from C+J, more info [here](https://xiaoyingpu.github.io/files/pu2021datamation.pdf)
- play around with package, understand constraints of system, what can I build off of? what will I have to do myself?
- start with the [datamation_sanddance](https://github.com/seankross/datamations/blob/main/R/datamation_sanddance.R) function but realize working in a table format would be easier and more in line with what I really need anyway ([datamation_tibble](https://github.com/seankross/datamations/blob/main/R/datamation_tibble.R))
- scratch work in R
- sketches
- stopping point: duplicate rows based on counts (expand into dataframe of same size as original sample where rows are actually duplicated based on how often they appear in resample)