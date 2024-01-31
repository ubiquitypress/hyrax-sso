# Hyrax::Sso

Hyrax SSO is an open source Ubiquity Press product which enables Single Sign On functionality with [WorkOS](https://workos.com/). This Gem was primarily designed to work within a Hyku installation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hyrax-sso'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hyrax-sso

Generate the migration by running: 

    $ rails generate hyrax:sso:install 

This will load the db migration file for SSO. Then run migrations:

    $ rails db:migrate

* Enable SSO for your account in the hyku installation (via url-of-tenant/proprietor/accounts/)
* You need to have an account in [WorkOS](https://workos.com/)
* go to: https://dashboard.workos.com/get-started and follow the instructions. 
  * Make sure to set the following environment variables.
    * WORKOS_API_KEY
    * WORKOS_CLIENT_ID
  * Setup a workos connection
  * Setup a workos oganisation
  * Add the redirect URL to workos dashboard. It should be url-of-tenant/sso/login

## Usage
  
* The gem will provide new routes to use in order to adapt SSO functionality in a Hyku installation. 
  * You can use /sso/login to test SSO. (example: https://up.hyku.test/sso/login)
  * You will see a button to login via SSO

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ubiquitypress/hyrax-sso. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/hyrax-sso/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hyrax::Sso project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hyrax-sso/blob/master/CODE_OF_CONDUCT.md).
