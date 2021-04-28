Working <- df_working$Working

employees <- cbind(employees, Working, stringsAsFactors = FALSE)
print(employees)