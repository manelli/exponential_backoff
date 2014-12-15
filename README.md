# Exponential Backoff
### _Simple Exponential Backoff in Ruby_
---

## Installation

    $ gem install exponential_backoff

## Usage

```ruby
require 'exponential_backoff'

ExponentialBackoff.try(3) do
  res = HTTP.get(url)
  fail if res.error?
end

# or

begin
  ExponentialBackoff.try(2) { HTTP.get('www.google.com') }
rescue => e
  e.errors # => [#<RuntimeError: Blah>, #<ConnectionError: Bleh>]
end
```

## API
```ruby
ExponentialBackoff.try(max_number_of_tries) { request }
```
