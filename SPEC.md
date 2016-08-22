Guard::RubyCritic
=================

Guard::RubyCritic is a tool that detects and reports smells in Ruby code in real-time.

Inspired by [RuboCop][1], [Rails Best Practices][2] and [Code Climate][3], Ruby Critic aims to better help you refactor your code. By making use of Ruby's rich ecosystem of code metrics tools, Ruby Critic generates high-quality visualizations and insightful code quality reports.

[1]: https://github.com/bbatsov/rubocop/
[2]: https://github.com/railsbp/rails_best_practices
[3]: https://codeclimate.com/

Installation
------------

Add this line to your application's Gemfile:

```ruby
gem "guard-rubycritic"
```

And then execute:

```bash
$ bundle
```

Next, generate a default `Guardfile` in your root directory:

```bash
$ guard init rubycritic
```

Usage
-----

Change your `Guardfile` to your heart's content and simply run `guard` to get instant feedback on your code quality:

```bash
$ guard
```
