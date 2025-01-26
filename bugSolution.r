```r
# Solution 1: Using case-insensitive indexing with `grep` or `match`

df <- data.frame(col1 = 1:3, Col2 = 4:6)

# Using grep to find column indices regardless of case
col_indices <- grep("(col1|Col2)", names(df), ignore.case = TRUE)
subset_df <- df[, col_indices]

# Using match for exact match regardless of case
col_indices <- match(tolower(c("col1", "Col2")), tolower(names(df)))
subset_df <- df[, col_indices]

# Solution 2: Ensuring exact column name matching

df <- data.frame(col1 = 1:3, col2 = 4:6) # Corrected column names
subset_df <- df[, c("col1", "col2")]

#Print the resulting subset data frame in both solutions
print(subset_df)
```