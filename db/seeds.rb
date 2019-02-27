# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Job.destroy_all
Language.destroy_all
Review.destroy_all


puts 'Creating users...'
users_attributes = [
  {
    email:       'Jamesu@bond.com',
    password:      'password',
    created_at:  'DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"),',
    first_name:  'James',
    last_name:   'Bond',
    description: 'Need to get some confidential documents to be translated in Turkish.',
    picture:     'https://images.pexels.com/photos/53487/james-stewart-man-person-actor-53487.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    availability: true,
    location:    '85 Albert Embankment, Vauxhall, Lambeth London United Kingdom',
    can_travel:  true,
    interpreter: false,
    phone:       '0800 789 321',
  },
  {
    email:       'Selcuk@Karakus.com',
    password:      'password',
    created_at:  'DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"),',
    first_name:  'Selcuk',
    last_name:   'Karakus',
    description: 'Can transalate English to Turkish confidentialy.  Accepts BitCoin. (also has an evil empire with crocodiles',
    picture:     'http://avatars1.githubusercontent.com/u/42585052?v=4',
    availability: true,
    location:    'blue mosque istanbul turkey',
    can_travel:  true,
    interpreter: true,
    phone:       '5437 789 321',
  },
    {
    email:       'laetitia@casta.com',
    password:      'password',
    created_at:  'DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"),',
    first_name:  'Laetitia',
    last_name:   'Casta',
    description: 'Can transalate English to Turkish.  Looking to be saved from an evil translator. Will die in the end.',
    picture:     'http://images.unsplash.com/photo-1524290266577-e90173d9072a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=562&q=80',
    availability: true,
    location:    'blue mosque istanbul turkey',
    can_travel:  true,
    interpreter: true,
    phone:       '5437 789 321',
  },
     {
    email:       'gaston@lagaffe.com',
    password:      'password',
    created_at:  'DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"),',
    first_name:  'Gaston',
    last_name:   'Lagaffe',
    description: 'Need help translating French from France to French from Belgium.  Really cannot make sense of it.',
    picture:     'https://anniversaire-celebrite.com/upload/250x333/gaston-lagaffe-250.jpg',
    availability: true,
    location:    'Rue Jules Destrée 52, 6001 Charleroi, Belgium',
    can_travel:  true,
    interpreter: true,
    phone:       '5437 999 321',
  },
   {
    email:       'ryan@gosling.com',
    password:      'password',
    created_at:  'DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"),',
    first_name:  'Ryan',
    last_name:   'Gosling',
    description: 'I am having to travel to foreign countries frequently and need help with adapting to the new country each time',
    picture:     'https://en.wikipedia.org/wiki/Ryan_Gosling#/media/File:Ryan_Gosling_2_Cannes_2011_(cropped).jpg',
    availability: true,
    location:    '315 E 68th St New York, NY 10021 USA',
    can_travel:  true,
    interpreter: true,
    phone:       '5437 987 321',
  },
     {
    email:       'inspector@gadget.com',
    password:      'password',
    created_at:  'DateTime.strptime("09/01/2005 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"),',
    first_name:  'Inspector',
    last_name:   'gadget',
    description: 'I have no clue what I am doing.',
    picture:     'https://i.ebayimg.com/images/g/To4AAOSwgYlbk9bJ/s-l1600.jpg',
    availability: true,
    location:    '43, boulevard Pierre Frieden Kirchberg, Luxembourg',
    can_travel:  true,
    interpreter: true,
    phone:       '5437 987 333',
  },
]
User.create!(users_attributes)
puts 'User Finished!'

puts 'Creating jobs...'
jobs_attributes = [
   {
    name:       'Boring pharma translation',
    description: 'Incredible amout of documents no one will read.  Need intravenous coffee drip to cope doing this.',
    language:  'French',
    start_date:  'DateTime.strptime("09/03/2019 17:00", "%m/%d/%Y %H:%M"),',
    end_date:  'DateTime.strptime("09/09/2019 17:00", "%m/%d/%Y %H:%M"),',
    date_posted:      Date.today,
    budget: 50000000,
    status:     'Not started',
    user_id: 2,
    interpreter_id: 2,
  },
  {
    name:       'Confidential documents',
    description: 'Need this urgent translation done.  The world depends on it.',
    language:  'Turkish',
    start_date:  Date.today,
    end_date:  Date.today,
    date_posted:   Date.today,
    budget: 10000000,
    status:     'Not started',
    user_id: 1,
    interpreter_id: 1,
  },
   {
    name:       'Cricket',
    description: 'Need to make sense of Cricket rules.  No one really gets them',
    language:  'Chinese',
    start_date:  'DateTime.strptime("09/08/2019 17:00", "%m/%d/%Y %H:%M"),',
    end_date:    'DateTime.strptime("09/03/2020 17:00", "%m/%d/%Y %H:%M"),',
    date_posted:   Date.today,
    budget: 1,
    status:     'Not started',
    user_id: 4,
    interpreter_id: 4,
  },
  {
    name:       'Saturn tourist guide',
    description: 'Need to translate a tourist guide to Saturn.  Prior experience visiting the planet preferable.',
    language:  'Indian',
    start_date:  'DateTime.strptime("09/08/2014 17:00", "%m/%d/%Y %H:%M"),',
    end_date:    'DateTime.strptime("09/03/2015 17:00", "%m/%d/%Y %H:%M"),',
    date_posted:  'DateTime.strptime("09/08/2013 17:00", "%m/%d/%Y %H:%M"),',
    budget: 1,
    status:     'Completed',
    user_id: 5,
    interpreter_id: 5,
  },
]
Job.create!(jobs_attributes)
puts 'Jobs Finished!'


 puts 'Creating reviews...'
 reviews_attributes = [
    {
     description: 'Was magical to work with Laetitia pitty that she got killed',
     stars:  4,
     job_id:  1,
     created_at:  'DateTime.strptime("09/09/2019 17:00", "%m/%d/%Y %H:%M"),',
     updated_at:      Date.today
   },
  {
    description: 'Fantastic translation',
    stars:  5,
    job_id:  0,
    created_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:   'DateTime.strptime("09/09/2019 17:00", "%m/%d/%Y %H:%M"),',
  },
  {
    description: 'Shit work.  Did not want my documents translated in Klingon.',
    stars:  1,
    job_id:  3,
    created_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:   'DateTime.strptime("09/09/2019 17:00", "%m/%d/%Y %H:%M"),',
  },
]
Review.create!(reviews_attributes)
puts 'Reviews Finished!'


puts 'Creating languages...'
languages_attributes = [
   {
    name:          'Indian',
    created_at:    'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
  },
    {
    name:          'French',
    created_at:    'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
  },
      {
    name:          'Turkish',
    created_at:    'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
  },
        {
    name:          'Nepali',
    created_at:    'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
  },
        {
    name:          'Klingon',
    created_at:    'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
  },
]
Language.create!(languages_attributes)
puts 'Languages Finished!'
