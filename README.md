# Simple Exponential Backoff in Ruby

## Usage

```ruby
require 'exponential_backoff'

request = -> (url) { res = Hippie.get(url); fail if res.error?; res }

ExponentialBackoff.try(3) { request.call('http://example.org') }
```

### API
```ruby
ExponentialBackoff#try(max_number_of_tries) { request }
```
