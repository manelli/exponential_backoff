# Exponential Backoff
### _Simple Exponential Backoff in Ruby_
---

## Installation

    $ gem install exponential_backoff

## Usage

```ruby
require 'exponential_backoff'

ExponentialBackoff.try(3) do
  res = Hippie.get(url)
  fail if res.error?
end
```

## API
```ruby
ExponentialBackoff.try(max_number_of_tries) { request }
```
