from collections import defaultdict

# Example dataset
text = ["hello world", "hello python", "hello hadoop"]

# Map step: split into words
mapped = []
for line in text:
    for word in line.split():
        mapped.append((word, 1))

# Reduce step: sum counts
word_count = defaultdict(int)
for word, count in mapped:
    word_count[word] += count

print(dict(word_count))
