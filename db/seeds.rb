# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Scopes

bk = Scope.create(title: "Brooklyn", details: "One of the five boroughs of New York City.")
gny = Scope.create(title: "Greater New York Area", details: "The statistical New York metropolitan area consisting of New York City and surrounding counties of New York, New Jersey, Connecticut, and Pennsylvania.")
us = Scope.create(title: "United States", details: "The United States has the greatest amount of private wealth globally and yet, many remain vulnerable to poverty.")

## Resources

bkshowslove = Resource.create(title: "Brooklyn Shows Love Mutual Aid Project", details: "A five-pronged campaign to build and support neighborhood-based mutual aid efforts, connect people to existing or new community resources, and to provide material aid.", link: "http://www.equalityforflatbush.org/brooklyn-shows-love-mutual-aid-project/", scope_id: bk.id)
thecollective = Resource.create(title: "The Collective Mutual Aid Fund", details: "The Smile Trust is serving under resourced populations with Mutual Aid Stipends of $75 in Both Miami and Atlanta.", link: "https://docs.google.com/forms/d/e/1FAIpQLSea4IJDRVH6NwHksgxNO9nYesIfhkkarXiHP3Wwgt3aQwchKw/viewform", scope_id: gny.id)
bkcommbf = Resource.create(title: "Brooklyn Community Bail Fund", details: "Brooklyn Community Bail Fund secures the freedom of New Yorkers who would otherwise be detained pretrial due to their poverty alone. We are committed to challenging the criminalization of race, poverty and immigration status, the practice of putting a price on fundamental rights, and the persistent myth that bail is a necessary element of the justice system.", link: "https://brooklynbailfund.org/", scope_id: bk.id)

## Organizers

e4f = Organizer.create(title: "Equality for Flatbush", about: "Since March 25th, Equality for Flatbush (E4F) and the Brooklyn Anti-gentrification Network (BAN) have distributed non-perishable food, household and COVID-19 supplies to 340 households in 18 Brooklyn neighborhoods.", website: "http://www.equalityforflatbush.org/", email: "B4G@equalityforflatbush.org")
bkantigentri = Organizer.create(title: "The Brooklyn Anti-Gentrification Network", about: "The Brooklyn Anti-Gentrification Network (BAN), fights to stop rampant corporate gentrification that is causing displacement of residents.", website: "http://bangentrification.org", email: "info@BANgentrification.org")
bkcollect = Organizer.create(title: "The Black Collective, Inc.", about: "An organization committed to promoting a shared agenda to elevate political consciousness and amplify the economic power of Black communities.", website: "https://www.theblkcollective.org/", email: "n/a")
miamiclimate = Organizer.create(title: "The Miami Climate Alliance", about: "Since its creation in 2015, the Miami Climate Alliance has built urgency, power, and cohesion around climate change and sea level rise by achieving significant policy wins and working to establish a model for just, equitable, and resilient communities.", website: "http://miamiclimatealliance.org/", email: "miamiclimatealliance@gmail.com")

## Needs

gent = Need.create(title: "Gentrification", details: "Gentrification is a process of changing the character of a neighborhood through the influx of more affluent residents and businesses. Combatting it is important for stable communities.")
foodinsec = Need.create(title: "Food Insecurity", details: "Food insecurity describes a household's inability to provide enough food for every person in that household.")
climatechng = Need.create(title: "Climate Change", details: "Climate change describes slow fluctuations in climate patterns on a regional or global level.")
ab = Need.create(title: "Anti-Blackness", details: "Being Black in the United States comes with additional layers of policing and other forms of systemic oppression.")
bail = Need.create(title: "Money Bail", details: "An inherently racist and classist institution that disproportionately allows a greater number of Black Americans to serve pre-trial time for accused crimes.")
mutual = Need.create(title: "Mutual Aid", details: "Mutual aid projects are a form of political participation in which people take responsibility for caring for one another and changing political conditions.")

## Organizer-Resources Joiners
OrganizerResource.create(organizer_id: bkcollect.id, resource_id: thecollective.id)
OrganizerResource.create(organizer_id: e4f.id, resource_id: bkshowslove.id)
OrganizerResource.create(organizer_id: miamiclimate.id, resource_id: thecollective.id)

## Resource-Needs Joiners

ResourceNeed.create(resource_id: bkshowslove.id, need_id: mutual.id)
ResourceNeed.create(resource_id: thecollective.id, need_id: mutual.id)
ResourceNeed.create(resource_id: bkcommbf.id, need_id: bail.id)


