# Welcome to my test task

## Tools versions


**Ruby** version 3.0.3

**Rails** version 7.0.2.3

## Task requirements
For each type of user, it is necessary to implement the following functionality:
1. The patient can register, enter his personal account (Profile),
view a list of doctors by category, make an appointment, get
recommendations from the doctor after taking.

2. The doctor can enter his personal account (Profile), view the list of registered
patients, give advice to the patient. The physician may refer to a certain
categories (therapist, cardiologist, etc.).

1. Admin has access to the list of patients and doctors. Can create categories
doctors, assign a specific doctor to a category. (can be done via
ActiveAdmin/Administrate)

Requirements for authentication and authorization:
- use devise;
- implement login via phone-password;
- use gem cancancan to differentiate user rights;

Category table requirements:
- validation for uniqueness by name;
- possibility to add several doctors;

Requirements for Doctor-Patient tables:
- implement many-to-many communication;
- a doctor can only have 10 open records (simultaneously);
- the record is automatically closed (not deleted) after the doctor writes
a recommendation to the user;

Testing:
- It is necessary to write 3 types of tests model, feature, request for a test project.
- Use RSpec and Capybara, preferably factory_bot_rails and faker
- Model. write a phone_number validation test for the Doctor model
- Request. test the create action for any controller
- Feature. log in as a doctor and leave a recommendation for a patient General requirements:
- Make a public part for patients and doctors;
- To implement the admin panel, you can use ActiveAdmin;
- Store pictures on S3 or Cloudinary;
- Put the project on Heroku and the code on GitHub. Send links + access to
admin part and public part.


 
 ## Database 
 production pg 
 
 development sqlite3
 
## To run the test suite 

"bundler exec rspec"

 ## External Gems
 
gem 'devise'

gem 'cancancan'

gem 'activeadmin'

gem 'aws-sdk-s3', '~> 1.111', '>= 1.111.1'

gem "factory_bot_rails"

gem 'pg'

gem 'faker'

gem "image_processing", "~> 1.2"
 
 ## Project is deployed to

 Heroku: https://hospital-personal-project.herokuapp.com


