# Cluster::Discovery

This is a library that provides a generic interface to multiple cluster providers.

## Cluster Providers
Cluster providers are something that provides metadata about a collection of hosts in a cluster.  Supported providers are as follows:

* [x] EC2 Tags
* [x] EC2 AutoScaling Groups
* [ ] Consul Services
* [ ] Static Lists

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cluster-discovery'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cluster-discovery

## Usage

### EC2 Tags

To discover cluster instances with EC2 Tags use something like the following example.  The keys `aws_region`, `aws_tags`(`key`, `value`) are all required.

This returns an Array of EC2 Instance Objects

```ruby
instances = Cluster::Discovery.discover(
  'ec2_tag',
  aws_region: 'us-east-1',
  aws_tags: [{ key: 'Service', value: 'router' }])

instances.map(&:instance_id)
```

### AutoScaling Groups

To discover cluster instances by AutoScaling Group use something like the following example.  The keys `aws_region`, `aws_asg` are all required.

```ruby
instances = Cluster::Discovery.discover(
  'ec2_asg',
  aws_region: 'us-east-1',
  aws_asg: 'foo-prod-v000')

instances.map(&:instance_id)
```

## Contributing

1. Fork it ( https://github.com/rapid7/cluster-discovery/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
