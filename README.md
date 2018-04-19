# simile

## Ideas
### CLI Arguments
Confidence: minimum confidence for a match
Delimiter: for tokenizing

## Similarity Methods
- By character: frequency, appearance, position. Same for token.
- TF/IDF
- Substring match
  - Rabin-Karp
  - Boyer-Moore-Horspool
  - Longest Common Subsequence(s)
  - Edit Distance
- [Sparse Distributed Representations](http://www.cortical.io/technology_representations.html)
- n-grams
- Markov Chain

## Open Questions
SDR can be used for fast comparisons - but how to encode a string into SDR in the first place?

## Design
* Look at using [pipes](https://hackage.haskell.org/package/pipes)
- Example file tailing application: https://gist.github.com/radix/e9b90c09b75fbe945d69
