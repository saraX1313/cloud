
from collections import Counter
import re
import nltk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize


# Download the stopwords corpus if you haven't already
nltk.download('stopwords')

# Read the contents of the "random_paragraphs.txt" file
with open("random_paragraphs.txt", "r",encoding="utf-8") as file:
        text = file.read()
        
# Remove punctuation 
text = re.sub(r'[^\w\s]', '', text)

# Tokenize the text
words = word_tokenize(text)

# Remove stop words
stop_words = set(stopwords.words("english"))
filtered_words = [word.lower() for word in words if word.lower() not in stop_words]

from collections import Counter
import re
import nltk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize


# Download the stopwords corpus if you haven't already
nltk.download('stopwords')

# Read the contents of the "random_paragraphs.txt" file
with open("random_paragraphs.txt", "r",encoding="utf-8") as file:
        text = file.read()
        
# Remove punctuation 
text = re.sub(r'[^\w\s]', '', text)

# Tokenize the text
words = word_tokenize(text)

# Remove stop words
stop_words = set(stopwords.words("english"))
filtered_words = [word.lower() for word in words if word.lower() not in stop_words]

# Remove 'also' from the filtered words as it is (STOP WORD)
filtered_words = [word for word in filtered_words if word != 'also']


# Join filtered words back into a sentence
filtered_text = " ".join(filtered_words)

print("Original text:\n", text)
print("\nFiltered text (after removing stop words):\n", filtered_text)


# Count word frequency
word_freq = Counter(filtered_words)

# Display word frequency count
for word, freq in word_freq.most_common():
    print(f"{word}: {freq}")




# Find word with maximum frequency
max_word, max_freq = word_freq.most_common(1)[0]
print(f"\nWord with maximum frequency: '{max_word}' (Frequency: {max_freq})")



# Join filtered words back into a sentence
filtered_text = " ".join(filtered_words)

print("Original text:\n", text)
print("\nFiltered text (after removing stop words):\n", filtered_text)


# Count word frequency
word_freq = Counter(filtered_words)

# Display word frequency count
for word, freq in word_freq.most_common():
    print(f"{word}: {freq}")




# Find word with maximum frequency
max_word, max_freq = word_freq.most_common(1)[0]
print(f"\nWord with maximum frequency: '{max_word}' (Frequency: {max_freq})")

