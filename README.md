# Raynet CRM

This Gem provides connection to the Raynet.cz REST API.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'raynet'
```

## Configuration

Create file in config/initializers/raynet.rb with this content:

```ruby
Raynet::Config.config = {
  user: 'some_email@example.org', # email of CRM user with API rights
  api_key: 'crm-be5e87cf4d0d4b18a9ed9eeXXXXXXX', # API key you have generated
  instance_name: 'my_app' # your instance name
}
```

Or you can generate this config file by running ```rails generate raynet``` in console. 

## Using

#### Companies

```ruby
com = Raynet::Companies.new # initialize Companies connector
com.list({'limit' => 10, 'name[LIKE]' => 'Google'}) # return list of Companies

# creating:
data = {
    'name' => 'John Doe',
    'person' => true,
    'firstName' => 'John',
    'lastName' => 'Doe',
    'role' => 'B_PARTNER',
    'notice' => 'some@example.org',
    'rating' => 'A',
    'state' => 'A_POTENTIAL'
}
com.create(data) # creates new Company
```

#### Business cases

```ruby
bc = Raynet::BusinessCases.new # initialize Business cases connector
bc.list({'limit' => 10, 'name[LIKE]' => 'RAY%'}) # return list of Business cases

# creating:
data = {
  'company' => 103,
  'name' => "First BC",
  'totalAmount' => 1000,
  'validFrom' => '2018-01-30',
  'description' => 'Some text'
}
bc.create(data) # creates new Business case
```

#### Leads

```ruby
lead = Raynet::Leads.new # initialize Lead connector
lead.list({'limit' => 10, 'name[LIKE]' => 'Google'}) # return list of Leads

# creating:
data = {
    'topic' => 'Message topic',
    'priority' => 'DEFAULT',
    'companyName' => 'John Doe',
    'notice' => 'Some text',
    'contactInfo' => {
        'email' => 'some@example.org'
    }
}
lead.create(data) # creates new Lead
```

See more data examples at `https://s3-eu-west-1.amazonaws.com/static-raynet/webroot/api-doc.html`

## Author

Richard Lapiš