Guard::Rubycritic
=================

Guard::Rubycritic is a tool that detects and reports smells in Ruby code in real-time.

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
