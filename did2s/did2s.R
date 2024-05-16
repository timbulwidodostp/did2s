# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Two Stage Difference in Differences (DID) Use did2s With (In) R Software
# Estimates a TWFE model using the two-stage difference-in-differences approach from Gardner (2021) Use did2s With (In) R Software
install.packages("did2s")
install.packages("ggplot2")
library("did2s")
library("ggplot2")
did2s = read.csv("https://raw.githubusercontent.com/timbulwidodostp/did2s/main/did2s/did2s.csv",sep = ";")
# Estimates Two Stage Difference in Differences (DID) Use did2s With (In) R Software
did2s=did2s(data=did2s,yname="dep_var",treatment="treat",first_stage=~0|unit+year,second_stage=~i(treat,ref=FALSE),cluster_var="unit",verbose=FALSE)
summary(did2s)
fixest::esttable(did2s)
# Two Stage Difference in Differences (DID) Use did2s With (In) R Software
# Estimates a TWFE model using the two-stage difference-in-differences approach from Gardner (2021) Use did2s With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished