# Nomlish

This library makes it possible to handle "Nomlish Translation", a service that translates Japanese in a Final Fantasy style, from Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nomlish'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nomlish

## Usage
```ruby
>> require "nomlish"
```

```ruby
#文字列を引数にして変換
Nomlish.translate("Rubyでノムリッシュ翻訳")
=> "Rubyでノムティスリッシュ概念を共有させる"

#引数でレベルの指定やオプションの指定が可能
Nomlish.translate("Rubyでノムリッシュ翻訳", 1, "without")
=> "Rubyでノムリッシュ深淵の言葉の解析"

Nomlish.translate("Rubyでノムリッシュ翻訳", 5, "only")
=> "そうさ……俺は……RubyでNOMU……RISSHIYU翻訳…そうさ……もてあました時間を埋めるために来てるのは俺ひとりだけ…みたいだった…"
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake ` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nomlish.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
