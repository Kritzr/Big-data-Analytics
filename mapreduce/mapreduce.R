text <- c("hello world", "hello python", "hello R", "R in mapreduce", "hello hadoop")

mapped <-unlist(strsplit(text, " "))
mapped <- data.frame(word = mapped, count =1)

result <-aggregate(count ~ word, data= mapped, sum)

print(result)