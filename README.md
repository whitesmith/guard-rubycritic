Guard::RubyCritic
=================

[![Gem Version](https://badge.fury.io/rb/guard-rubycritic.svg)](http://badge.fury.io/rb/guard-rubycritic)
[![Code Climate](http://img.shields.io/codeclimate/github/whitesmith/guard-rubycritic.svg)](https://codeclimate.com/github/whitesmith/guard-rubycritic)

<img src="http://i.imgur.com/66HACCD.png" alt="RubyCritic Icon" align="right" />
Guard::RubyCritic is a tool that uses [RubyCritic](https://github.com/whitesmith/rubycritic) to detect and report smells in Ruby code in real-time.

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

Change your `Guardfile` to your heart's content and start it with the following command:

```bash
$ guard
```

Each time you save a file, that file will be analysed and its report will be available at `YOUR_PROJECT_ROOT/tmp/rubycritic/current_file.html`.

Improving Guard::RubyCritic
---------------------------

See Guard::RubyCritic's [contributing guidelines](CONTRIBUTING.md) about how to proceed.
