## Ecological Graphing
## My work for analyzing my thesis data
## Joseph D Webb - Jan 30, 2024

install.packages("plotly")
#########################################################################################################
## Graphs to Generate:
# - 3 Dimensional Graph of Temp, Prec, and Prevalence of Lyme, Babe, and Anaplasmosis
#########################################################################################################
## Data Generation

# data <- read.csv("tickdata.csv")
# Create a matrix with the specified values
data <- matrix(c(72, 81, 64, 68,
                 10, 12, 14, 16, 
                 0.4, 0.3, 0.2, 0.1,
                 0.1, 0.2, 0.3, 0.4,
                 0.6, 0.3, 0.6, 0.6), 
               nrow = 4, 
               byrow = FALSE)

# Assign column and row names
colnames(data) <- c("TEMP", "PREC", "X.LYME", "X.BABE", "X.ANA")
rownames(data) <- c("Goff", "Ashb", "Jeri", "StMi")

print(data)
#########################################################################################################
## Data Generation
plot_ly(x=TEMP, y=PREC, z=X.LYME, type="scatter3d", mode="markers")



