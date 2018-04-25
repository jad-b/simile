# simile

## Getting Started
Build & run with arguments:
`stack exec simile-exe Setup.hs`

Watch for changes and re-build:
`stack build --fast --file-watch --pedantic`

## Ideas
### CLI Arguments
- Confidence: minimum confidence for a match
- Delimiter: for tokenizing
- Matchers: Which model(s) to apply

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
- [Haskell Analysis Cookbook](http://haskelldata.com/) has a lot of good ideas

## Open Questions
SDR can be used for fast comparisons - but how to encode a string into SDR in the first place?

## Design
* Look at using [pipes](https://hackage.haskell.org/package/pipes)
- Example file tailing application: https://gist.github.com/radix/e9b90c09b75fbe945d69
