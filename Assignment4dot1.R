df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))

df1 #left table
df2 #right table

#a   Return only the rows in which the left table have match.
# inner join
dfinner <- merge(x=df1,y=df2)
dfinner
#b   Returns all rows from both tables, join records from the left which have matching keys
#in the right table.outer or full join.

dfouter<-merge(x=df1,y=df2,by="CustId",all = TRUE)
dfouter
#c  Return all rows from the left table, and any rows with matching keys from the right
#table. LEFT JOIN.

dfleft<-merge(x=df1,y=df2,by="CustId",all.x = TRUE)
dfleft
#Return all rows from the right table, and any rows with matching keys from the left
#table.RIGHT JOIN
dfright<-merge(x=df1,y=df2,by="CustId",all.y = TRUE)
dfright

# . Return a long format of the datasets without matching key.
library(tidyr)
gather(df1)
gather(df2)
