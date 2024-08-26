# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates

p "Is Experienced?"
pp experienced?(@candidates[0])

p "Find by id:"
pp find(9)

p "Qualified Candidates:"
pp qualified_candidates(@candidates)

p "Order By Qualifications:"
pp order_by_qualifications(@candidates)