library(arules)

#load the data in transactions and use appropriate seperator, header
tr_data <- read.transactions("filename.csv", format = 'single', sep = ',')

#For specifying the parameters there is no set rule, one needs to analyse the 
#dataset and set accordingly, for example, I would like to recommend a 
#movie to a user who has seen atleast 3 of similiar movies, but that need not
# be the case with another programmer

rules <- apriori(tr_data, parameter = list(support = 0.0235, confidence = 0.7801,
                                           minlen = 3, maxlen = 5))

# minlen and maxlen parameters will deal with number of prior movies watched 
# before suggesting a new one, support and count look at the strength of
# association for the movies.

summary(rules)
inspect(rules)