install.packages("ggplot2")
library(ggplot2)
library(palmerpenguins)
ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))#adding color based on species

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species))#adding shape based on species 

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species, size=species))#adding color,shape and size based on species

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species))#alpha makes some points transparent. Can be used for dense data points

#specify all the points to be in one color 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color="purple")

#geom_smooth for line chart 
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#combine geom points 
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

#different line type for species 
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g, linetype=species))

#jittering 
ggplot(data=penguins)+
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g)) 


install.packages("diamonds")
View(diamonds)
#bar chart 
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut)) 

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,color=cut)) #bar chart with color

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, fill=cut)) #fill each bar with color

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, fill=clarity)) #fill each bar with its respective clarity


#Facets 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_wrap(~species) #separate plot for each species 

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut))+
  facet_wrap(~cut)#separate plot for each type of cut 

#facet_grid 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)


#labels - title 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins:Body Mass vs Flipper Length")
#subtitle 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins:Body Mass vs Flipper Length", subtitle = "Sample of Three Penguine Species")
#title,subtitle and caption 
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins:Body Mass vs Flipper Length", subtitle = "Sample of Three Penguine Species", caption="Data collected by Dr.Kristem Gorman")


#annotate functions with purple
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins:Body Mass vs Flipper Length", subtitle = "Sample of Three Penguine Species")+
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", color="purple", fontface='bold', size=4.5,angle=25)


#ggsave 
ggsave("Three Penguine Species.png")
