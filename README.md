# Tea Subscription
### README

## Table of Contents
- [Overview](#overview)
- [Schema](#schema)
- [Dev Setup](#dev-setup)
- [Endpoints](#json-contract)
- [Technologies](#technologies)
- [Contributors](#contributors)

### <ins>Overview</ins>
Rails API for a Tea Subscription Service.

### <ins>Schema</ins>
This application uses a PostgresQL database to store Customer and Subscription information.
<img width="600" alt="be_schema" src="https://user-images.githubusercontent.com/81711519/155605162-76177604-f417-4913-916e-d8723dcab5a9.png">

### <ins>Dev Setup</ins>
1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:{drop,create,migrate,seed}`
4. Run `RAILS_ENV=test` then `bundle exec rspec` to test

### <ins>Endpoints</ins>
[Endpoints](https://github.com/cdelpone/tea-subscriptions/blob/main/endpoints.md)

### <ins>Technologies</ins>

#### Versions
- Ruby 2.7.2
- Rails 5.2.6

#### Development
![Atom][Atom-img]
![Git][Git-img]
![Github][GitHub-img]
![Markdown][Markdown-img]
![PostgreSQL][PostgreSQL-img]
![Postman][Postman-img]
![Rubocop][Rubocop-img]
![Ruby on Rails][Ruby on Rails-img]

#### Languages
![Ruby][Ruby-img]

#### Testing
Factory Bot,
Faker,
![Pry][Pry-img]
![RSPEC][RSPEC-img]
![Shoulda Matchers][Shoulda Matchers-img]
![Simplecov][Simplecov-img]

#### Development Principles
![OOP][OOP-img]
![TDD][TDD-img]

### <ins>Contributors</ins>
![LinkedIn][LinkedIn-img]
- [Christina Delpone](https://www.linkedin.com/in/christinadelpone)
<!-- - [Mike Osmonson](https://www.linkedin.com/in/ozzie-osmonson/) -->

![Github][Github-img]
- [Christina Delpone](https://github.com/cdelpone)
<!-- - [Mike Osmonson](https://github.com/ozzman84) -->

<div align="center">
  <br />
  <a href="https://github.com/cdelpone/tea-subscriptions/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report a Bug</a>
  ·
  <a href="https://github.com/cdelpone/tea-subscriptions/issues/new?assignees=&labels=enhancement&template=02_FEATURE_REQUEST.md&title=feat%3A+">Request a Feature</a>
  ·
  <a href="https://github.com/cdelpone/tea-subscriptions/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+">Ask a Question</a>
</div>


<!-- Markdown link & img dfn's -->

<!-- #### Development -->
[Atom-img]: https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white
[Git-img]: https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white
[GitHub-img]: https://img.shields.io/badge/-GitHub-181717?style=flat&logo=github
[Markdown-img]: https://img.shields.io/badge/Markdown-000000.svg??style=for-the-badge&logo=markdown&logoColor=white
[PostgreSQL-img]: https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white
[Postman-img]: https://img.shields.io/badge/Postman-FF6C37?style=flat&logo=postman&logoColor=red
[Rubocop-img]: https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Ruby on Rails-img]: https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white

<!-- #### Languages -->
[ActiveRecord-img]: https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white
[Ruby-img]: https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white

<!-- #### Testing -->
[Capybara-img]: https://img.shields.io/badge/capybara-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Launchy-img]: https://img.shields.io/badge/launchy-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Pry-img]: https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[RSPEC-img]: https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Shoulda Matchers-img]: https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white
[Simplecov-img]: https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white

<!-- #### Development Principles -->
[OOP-img]: https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white
[TDD-img]: https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white
[MVC-img]: https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white
[REST-img]: https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white

<!-- ### <ins>Contributors</ins> -->
[LinkedIn-img]: https://img.shields.io/badge/LinkedIn-0077B5.svg??style=for-the-badge&logo=linkedin&logoColor=white

<!-- Tea Subscription Service
You will create a Rails API for a Tea Subscription Service.
Requirements:
At a minimum, you must create:
An endpoint to subscribe a customer to a tea subscription
An endpoint to cancel a customer’s tea subscription
An endpoint to see all of a customer’s subsciptions (active and cancelled)
Beyond the base requirements, include any additional endpoints you’d like, but be mindful of your time. You don’t need to go overboard, consider what might be necessary to achieve MVP so that this API is easy to understand and consume by a Frontend Developer.

Things we’ll be looking for:
A strong understanding of Rails
Ability to create restful routes
Demonstration of well-organized code, following OOP
Test Driven Development
Clear documentation
Try to limit your total time to approximately 8 hours on this project. Prioritize what is important to completing MVP and demonstrating your capabilities as a developer. If you are looking for a stretch option, you can consume this API for tea information: Tea API

Data Details
Note: The below data outlines are meant to be a guide for data details you may use in the application. If you want to change or include more information please do so. Using fake data in your application is okay.


Tea
Title
Description
Temperature
Brew Time
Customer
First Name
Last Name
Email
Address
Subscription
Title
Price
Status
Frequency -->
