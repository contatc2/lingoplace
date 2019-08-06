puts 'Cleaning database...'
User.destroy_all
Job.destroy_all
InterpreterLanguage.destroy_all
Language.destroy_all
Review.destroy_all


puts 'Creating languages...'

indian = Language.create!(name: 'Indian')
french = Language.create!(name: 'French')
turkish = Language.create!(name: 'Turkish')
nepali = Language.create!(name: 'Nepali')
klingon = Language.create!(name: 'Klingon')

puts 'Languages Finished!'


puts 'Creating users...'

james = User.create!(
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
)
selcuk = User.create!(
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
)
laetitia = User.create!(
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
)
gaston = User.create!(
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
)
ryan = User.create!(
  email:       'ryan@gosling.com',
  password:      'password',
  created_at:  'DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"),',
  updated_at:  'DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"),',
  first_name:  'Ryan',
  last_name:   'Gosling',
  description: 'I am having to travel to foreign countries frequently and need help with adapting to the new country each time',
  picture:     'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Ryan_Gosling_2_Cannes_2011_%28cropped%29.jpg/800px-Ryan_Gosling_2_Cannes_2011_%28cropped%29.jpg',
  availability: true,
  location:    '315 E 68th St New York, NY 10021 USA',
  can_travel:  true,
  interpreter: true,
  phone:       '5437 987 321',
)
gadget = User.create!(
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
  interpreter: false,
  phone:       '5437 987 333',
)
puts 'Users seeding Finished!'

puts 'Creating jobs...'
job_1= Job.create!(
  name:       'Boring pharma translation',
  description: 'Incredible amout of documents no one will read.  Need intravenous coffee drip to cope doing this.',
  language:  french,
  start_date:  'DateTime.strptime("09/03/2019 17:00", "%m/%d/%Y %H:%M"),',
  end_date:  'DateTime.strptime("09/09/2019 17:00", "%m/%d/%Y %H:%M"),',
  date_posted:      Date.today,
  budget: 50000000,
  status:     'Not started',
  user: james,
  interpreter: laetitia,
)
job_2= Job.create!(
  name:       'Confidential documents',
  description: 'Need this urgent translation done.  The world depends on it.',
  language:  turkish,
  start_date:  Date.today,
  end_date:  Date.today,
  date_posted:   Date.today,
  budget: 10000000,
  status:     'Not started',
  user: james,
  interpreter: selcuk,
)
job_3= Job.create!(
  name:       'Cricket',
  description: 'Need to make sense of Cricket rules.  No one really gets them',
  language:  nepali,
  start_date:  'DateTime.strptime("09/08/2019 17:00", "%m/%d/%Y %H:%M"),',
  end_date:    'DateTime.strptime("09/03/2020 17:00", "%m/%d/%Y %H:%M"),',
  date_posted:   Date.today,
  budget: 1,
  status:     'Not started',
  user: gadget,
  interpreter: gaston,
)
job_4= Job.create!(
  name:       'Saturn tourist guide',
  description: 'Need to translate a tourist guide to Saturn.  Prior experience visiting the planet preferable.',
  language:  indian,
  start_date:  'DateTime.strptime("09/08/2014 17:00", "%m/%d/%Y %H:%M"),',
  end_date:    'DateTime.strptime("09/03/2015 17:00", "%m/%d/%Y %H:%M"),',
  date_posted:  'DateTime.strptime("09/08/2013 17:00", "%m/%d/%Y %H:%M"),',
  budget: 1,
  status:     'Completed',
  user: james,
  interpreter: laetitia,
)

puts 'Jobs seeding Finished!'


puts 'Creating Interpreter languages...'
languages_attributes = [
  {
    user:  gaston,
    language: french,
  },
  {
    user:  gaston,
    language: klingon,
  },
  {
    user:  selcuk,
    language: turkish,
  },
  {
    user:  laetitia,
    language: french,
  },
  {
    user:  laetitia,
    language: indian,
  },
  {
    user:  laetitia,
    language: nepali,
  },
  {
    user:  ryan,
    language: nepali,
  },

]
InterpreterLanguage.create!(languages_attributes)
puts 'Interpreter language Finished!'



puts 'Creating reviews...'
reviews_attributes = [
  {
    description: 'Was magical to work with Laetitia pitty that she got killed',
    stars:  4,
    job: job_1,
  },
  {
    description: 'Fantastic translation',
    stars:  5,
    job:  job_2,
    created_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:   'DateTime.strptime("09/09/2019 17:00", "%m/%d/%Y %H:%M"),',
  },
  {
    description: 'Shit work.  Did not want my documents translated in Klingon.',
    stars:  1,
    job:  job_3,
    created_at:  'DateTime.strptime("09/09/2015 17:00", "%m/%d/%Y %H:%M"),',
    updated_at:   'DateTime.strptime("09/09/2019 17:00", "%m/%d/%Y %H:%M"),',
  },
]
Review.create!(reviews_attributes)
puts 'Reviews Finished!'
