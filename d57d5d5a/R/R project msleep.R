install.packages("devtools")
library(tidyverse)
library(devtools)
data(msleep)
write.csv(msleep, file = 'msleep.csv')
x <- read.csv('msleep.csv')
x
names(x)
head(x)
tail(x)
(ggplot2::msleep)
ggplot(data = msleep) +
  geom_point(mapping = aes(x = vore, y = awake))
ggplot(data = msleep) +
  geom_point(mapping = aes(x = conservation, y = awake))
ggplot(data = msleep) +
  geom_point(mapping = aes(x = vore, y = awake, color = order))

ggplot(data = msleep) +
  geom_point(mapping = aes(x = conservation, y = awake, color = vore))
ggplot(msleep, aes(conservation, awake)) +
  geom_point(aes(color = vore, shape = vore)) +
  scale_colour_brewer(palette = "Blues")
ggplot(data = msleep) +
  geom_point(mapping = aes(x = conservation, y = awake, shape = vore))
ggplot(data = msleep) +
  geom_point(mapping = aes(x = conservation, y = awake, alpha = vore))
ggplot(data = msleep) +
  geom_point(mapping = aes(x = conservation, y = awake)) +
  facet_wrap(~ vore, nrow = 2)
ggplot(data = msleep) +
  geom_bar(mapping = aes(x = conservation))
ggplot(data = msleep) +
  stat_count(mapping = aes(x = vore))
ggplot(data = msleep) +
  stat_count(mapping = aes(x = conservation))
ggplot(data = msleep) +
  geom_bar(mapping = aes(x = conservation, colour = conservation))+scale_colour_brewer(palette = "Blues")
ggplot(data = msleep) +
  geom_bar(mapping = aes(x = vore, colour = vore))
ggplot(data = msleep) +
  geom_bar(mapping = aes(x = vore, fill = vore))
ggplot(data = msleep) +
  geom_bar(mapping = aes(x = vore, fill = conservation))
ggplot(data = msleep) +
  geom_bar(mapping = aes(x = vore, fill = conservation), position = "fill")
ggplot(data = msleep, mapping = aes(x = vore, fill = conservation)) +
  geom_bar(alpha = 1/5, position = "identity")
ggplot(data = msleep, mapping = aes(x = vore, colour = conservation)) +
  geom_bar(fill = NA, position = "identity")
ggplot(data = msleep) +
  geom_bar(mapping = aes(x = vore, fill = conservation), position = "dodge")
