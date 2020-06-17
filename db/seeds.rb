# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Users

admin = User.create(username: "admin", password_digest: "#{User.digest('password')}", avatar: "http://code.gabriellealexa.com/gabcodeicon2.png" )

## Scopes

natl = Scope.create(title: "National", details: "Mutual aid that broadly serves people/groups in the United States.")
ny = Scope.create(title: "New York", details: "n/a")
pa = Scope.create(title: "Pennsylvania", details: "n/a")
fl = Scope.create(title: "Florida", details: "n/a")
ga = Scope.create(title: "Georgia", details: "n/a")
az = Scope.create(title: "Arizona", details: "n/a")
nv = Scope.create(title: "Nevada", details: "n/a")

## Resources

bkshowslove = Resource.create(title: "Brooklyn Shows Love Mutual Aid Project", img: "http://code.gabriellealexa.com/icons/icon-bk.jpg", details: "A five-pronged campaign to build and support neighborhood-based mutual aid efforts, connect people to existing or new community resources, and to provide material aid.", link: "http://www.equalityforflatbush.org/brooklyn-shows-love-mutual-aid-project/", scope_id: ny.id)
thecollective = Resource.create(title: "The Collective Mutual Aid Fund", img: "http://code.gabriellealexa.com/icons/icon-thecollective.jpg", details: "The Collective Mutual Aid Assistance program is powered by The Black Collective, Inc. in partnership with The Smile Trust, Inc. and The Miami Climate Alliance.", link: "https://docs.google.com/forms/d/e/1FAIpQLSea4IJDRVH6NwHksgxNO9nYesIfhkkarXiHP3Wwgt3aQwchKw/viewform", scope_id: ny.id)
bkcommbf = Resource.create(title: "Brooklyn Community Bail Fund", img: "http://code.gabriellealexa.com/icons/icon-bf.jpg", details: "Brooklyn Community Bail Fund secures the freedom of New Yorkers who would otherwise be detained pretrial due to their poverty alone. We are committed to challenging the criminalization of race, poverty and immigration status, the practice of putting a price on fundamental rights, and the persistent myth that bail is a necessary element of the justice system.", link: "https://brooklynbailfund.org/", scope_id: ny.id)

dactnow = Resource.create(title: "Desantis Act Now", img: "http://code.gabriellealexa.com/icons/icon-des.jpg", details: "Mutual aid organized by Dream Defenders and New Florida Majority, demanding economic relief, healthcare for all, protections for our democracy, and change within the prison industrial complex.", link: "https://www.desantisactnow.com/", scope_id: fl.id)
dcariz = Resource.create(title: "Decarcerate Arizona", img: "http://code.gabriellealexa.com/icons/icon-decar.jpg", details: " To slow the cycle of people in and out of jail, we must drastically reduce jail and detention center admissions. Less people in jails and detention centers is a definite way to prevent the spread of disease. Public officials must reduce the prison, jail, and detention center's population size to ensure cells are not shared, there are sufficient medical beds for anyone who may need one, and adequate numbers of prison staff to ensure safety for staff, those incarcerated, and visitors. And for those currently in prison, the only public health solution is RELEASE! Arizona cannot afford a failed response to COVID-19!", link: "https://www.masslibaz.org/decarcerate-arizona-public-health-agenda-for-covid-19-crisis-response.html", scope_id: az.id)
metroatl = Resource.create(title: "Metro Atlanta Mutual Aid Fund", img: "http://code.gabriellealexa.com/icons/icon-mutual.jpg", details: "The Metro Atlanta Mutual Aid Fund was created by community members from metro-Atlanta who have witnessed the needs of their neighbors at this time of crisis. While COVID-19 is a health pandemic, it has crippled economies and interrupted markets, causing wide-spread unemployment. Our concern is not with fixing the economy but instead with meeting the needs of people left with uncertainty and disruption.", link: "https://www.atlantamutualaid.org/", scope_id: ga.id)
frontline = Resource.create(title: "Frontline Dads Services", img: "http://code.gabriellealexa.com/icons/icon-front.jpg", details: "Mentoring, leadership development, social justice advocacy, and more provided by Frontline Dads Inc.", link: "http://www.frontlinedads.org/", scope_id: pa.id)
planff = Resource.create(title: "Vegas Freedom Fund", img: "http://code.gabriellealexa.com/icons/icon-vegas.jpg", details: "The goal of the Vegas Freedom Fund is to raise money to post bail for people who are being forced to stay in jail simply because they cannot afford to post bail themselves.", link: "https://www.massliberationnv.org/#vff", scope_id: nv.id)
bmbo = Resource.create(title: "Black Mamas Bail Out", img: "http://code.gabriellealexa.com/icons/icon-bmbo.jpg", details: "An annual campaign by National Bail Out seeking to raise awareness about the human and financial costs of money bail and emphasize its impact on Black mothers and caregivers.", link: "https://nationalbailout.org/black-mamas-bail-out/", scope_id: natl.id)
ditch = Resource.create(title: "Ditch Mitch", img: "http://code.gabriellealexa.com/icons/icon-ditch.jpg", details: "A completely grassroots-funded organization solely dedicated to holding Mitch McConnell accountable, supporting his Democratic opponent, and defeating Mitch once and for all in 2020.", link: "https://ditchmitchfund.com/", scope_id: natl.id)
coronavirus = Resource.create(title: "Coronavirus Care Fund", img: "http://code.gabriellealexa.com/icons/icon-cv.jpg", details: "The Coronavirus Care Fund provides emergency assistance for home care workers, nannies and house cleaners to stay home and stay safe during the coronavirus crisis, and to care for themselves and their families.", link: "https://membership.domesticworkers.org/coronavirus/get-support/", scope_id: natl.id)
phillybail = Resource.create(title: "Philadelphia Bail Fund", img: "http://code.gabriellealexa.com/icons/icon-pbf.jpg", details: "A revolving fund that posts bail for people who are indigent and cannot afford bail. Their goal is to keep families and communities together and vigorously advocate for the end to cash bail in Philadelphia.", link: "https://www.phillybailfund.org/", scope_id: pa.id)
pitts = Resource.create(title: "Pittsburgh Covid-19 LGBTQIA Emergency Relief Fund", img: "http://code.gabriellealexa.com/icons/icon-sis.jpg", details: "A trans-led relief fund prioritizing displaced LGBTQIA people in Pittsburgh.", link: "https://www.sisterspgh.org/covid19-lgbtqia-emergency-relief-fund", scope_id: pa.id)
smilemutual = Resource.create(title: "The Smile Trust Mutual Aid Fund", img: "http://code.gabriellealexa.com/icons/icon-smile.jpg", details: "A mutual aid fund to offer food & supply stipends to families and individuals in need.", link: "https://mthsmile.com/mutual-aid-fund/", scope_id: fl.id)
swrelief = Resource.create(title: "Sex Worker Relief Fund", img: "http://code.gabriellealexa.com/icons/icon-swfund.jpg", details: "Relief fund for sex workers in the Tampa Bay Area of Florida, with priority for those who are most marginalized and at risk.", link: "https://docs.google.com/forms/d/e/1FAIpQLSddrmq1itmK94J9MURArlCV4oyln6o3HG3YlXbm3otUaDIiqQ/viewform?fbclid=IwAR0_shgOnCz3xi3Iz0BipO-S5FjHcFOuSi3xRMKSFYP8cpuq2PVlR7vZ-Vk", scope_id: fl.id)
aacovid = Resource.create(title: "Covid-19 Mutual Aid Fund", img: "http://code.gabriellealexa.com/icons/icon-aa.jpg", details: "Advancing Justice-Atlanta has created mutual aid to build hygiene and care kits for elders, service workers, and other higher-risk/ higher-need populations in our communities.", link: "http://advancingjustice-atlanta.org/tab/show/40", scope_id: ga.id)
atlsolid = Resource.create(title: "Atlanta Solidarity Fund", img: "http://code.gabriellealexa.com/icons/icon-solid.jpg", details: "Provides jail support, bail, and access to representation to individuals arrested in Atlanta.", link: "https://atlsolidarity.org/", scope_id: ga.id)


bpj = Resource.create(title: "Black People's Justice Fund - Metro Phoenix", img: "http://code.gabriellealexa.com/icons/icon-bpjf.jpg", details: "Created in response to the targeting of Black people by police, BPJF believes putting people in cages is never the answer.", link: "https://secure.everyaction.com/lFZFGA1BpUa9kyYYgSxSKw2?fbclid=IwAR3YvwJy2ZFuGfVk0BL1rWX8UYOOx2Mbv8NVEV4MjlEXCSHDv-lx8l1H6IM", scope_id: az.id)
tsc = Resource.create(title: "Tucson Second Chance Community Bail Fund", img: "http://code.gabriellealexa.com/icons/icon-tuc.jpg", details: "Established to address the disproportionate impact of the cash bail system on communities of color and vulnerable populations in Pima County", link: "https://watchtucson.com/", scope_id: az.id)

covidwash = Resource.create(title: "COVID-19 Washoe County Mutual Aid Solidarity Network", img: "http://code.gabriellealexa.com/icons/icon-stay.jpg", details: "A Covid-19 mutual aid solidarity network, comprised of different grassroots organizations, movements and organizers, who are committed to organizing mutual material support in the community.", link: "https://www.washoecountymasn.org/", scope_id: nv.id)
hands = Resource.create(title: "Wash-oe Hands Covid-19 Mutual Aid Relief Fund", img: "http://code.gabriellealexa.com/icons/icon-wash.jpg", details: "Relief for Nevadans during COVID-19 and beyond, prioritizing those who are most in need.", link: "https://www.washoehands.com/", scope_id: nv.id)


## Starred Resources for Admin

StarredResource.create(user_id: admin.id, resource_id: bkcommbf.id)

## Organizers

# National
nbo = Organizer.create(title: "National Bail Out", img: "http://code.gabriellealexa.com/icons/icon-bmbo.jpg", about: "The National Bail Out collective is a Black-led and Black-centered collective of abolitionist organizers, lawyers and activists building a community-based movement to support our folks and end systems of pretrial detention and ultimately mass incarceration.", website: "http://nationalbailout.org", email: "n/a")
ryan = Organizer.create(title: "Ryan Aquilina", img: "http://code.gabriellealexa.com/icons/icon-ryan.jpg", about: "A political activist and campaign veteran who has worked on over a dozen competitive Senate races, Ryan Aquilina has dedicated his entire career to energizing Democrats, raising grassroots money online, and defeating Republicans like Mitch McConnell.", website: "https://www.linkedin.com/in/ryanaquilina/", email: "info@ditchfund.com")
domestic = Organizer.create(title: "National Domestic Workers Alliance", img: "http://code.gabriellealexa.com/icons/icon-cv.jpg", about: "The National Domestic Workers Alliance is a community of nannies, house cleaners, and care workers, connecting in person and online to make our work and lives better.", website: "https://membership.domesticworkers.org/", email: "membership@domesticworkers.org")


# Nevada
plan = Organizer.create(title: "PLAN – Mass Liberation Project", img: "http://code.gabriellealexa.com/icons/icon-plan.jpg", about: "A decarceration initiative @ Progressive Leadership of Nevada, focused on ending mass incarceration in Nevada and beyond.", website: "https://www.massliberationnv.org/", email: "massliberationnv@gmail.com")
washmutual = Organizer.create(title: "Washoe County Mutual Aid Solidarity Network", img: "http://code.gabriellealexa.com/icons/icon-stay.jpg", about: "Washoe County Mutual Aid Solidarity Network is an all-volunteer grassroots network operating in washoe county, Nevada, connecting with multiple coalition partner throughout the region.", email: "contact@https://www.washoecountymasn.org")
handsgrp = Organizer.create(title: "Wash-oe Hands", img: "http://code.gabriellealexa.com/icons/icon-wash.jpg", about: "Washoe Hands facilitates immediate short-term assistance by connecting community members. This is a place for individuals and organizations in Washoe County and Nevada to come together in the spirit of solidarity.", email: "hello@washoehands.com")



# New York
e4f = Organizer.create(title: "Equality for Flatbush", img: "http://code.gabriellealexa.com/icons/icon-eq.jpg", about: "Since March 25th, Equality for Flatbush (E4F) and the Brooklyn Anti-gentrification Network (BAN) have distributed non-perishable food, household and COVID-19 supplies to 340 households in 18 Brooklyn neighborhoods.", website: "http://www.equalityforflatbush.org/", email: "B4G@equalityforflatbush.org")
bkantigentri = Organizer.create(title: "The Brooklyn Anti-Gentrification Network", img: "http://code.gabriellealexa.com/icons/icon-bk.jpg", about: "The Brooklyn Anti-Gentrification Network (BAN), fights to stop rampant corporate gentrification that is causing displacement of residents.", website: "http://bangentrification.org", email: "info@BANgentrification.org")
bkcollect = Organizer.create(title: "The Black Collective, Inc.", img: "http://code.gabriellealexa.com/icons/icon-thecollective.jpg", about: "An organization committed to promoting a shared agenda to elevate political consciousness and amplify the economic power of Black communities.", website: "https://www.theblkcollective.org/", email: "n/a")
manup = Organizer.create(title: "Man Up! Inc.", img: "http://code.gabriellealexa.com/icons/icon-man.jpg", about: "Since the Inception of this pandemic has been eating our community in a number of different ways. Man Up! Inc have been handing out hundreds of mask and gloves kits to the people in their communities who are least fortunate.", website: "https://manupinc.org/", email: "dyates@manupinc.org")
bkmvmnt = Organizer.create(title: "Brooklyn Movement Center/Central Brooklyn Food Co-Op", img: "http://code.gabriellealexa.com/icons/icon-bk.jpg", about: "The Central Brooklyn Food Co-op is a 100% working member-owned and operated food store with membership open to all. Our mission is to utilize our collective strength to ensure access to affordable and fresh food within the mostly-of-color, low- and moderate-income communities of Central Brooklyn.", email: "bmc@brooklynmovementcenter.org")

# Georgia
leila = Organizer.create(title: "Leila Abadir (She/They)", img: "http://code.gabriellealexa.com/icons/icon-l2.jpg", about: "Leila is an organizer and nursing student committed to building self-determination for Black and Brown communities through cooperatives and mutual aid.", website: "n/a", email: "n/a")
lbr = Organizer.create(title: "Lauren Brockett (She/Her)", img: "http://code.gabriellealexa.com/icons/icon-l1.jpg", about: "As a West Indian immigrant from the UK, Lauren enjoys cultural competency training for individuals, religious and corporate groups.", website: "https://www.laurenbrockett.com/", email: "n/a")
smiletrust1 = Organizer.create(title: "The Smile Trust: Atlanta", img: "http://code.gabriellealexa.com/icons/icon-smile.jpg", about: "The Smile Trust have taken on the task to provide resources, education, jobs, and housing to combat poverty and homelessness.", website: "https://mthsmile.com/", email: "info@mthsmile.com")
aaa = Organizer.create(title: "Asian Americans Advancing Justice", img: "http://code.gabriellealexa.com/icons/icon-aa.jpg", about: "The first nonprofit legal advocacy organization dedicated to protecting the civil rights of Asian American, Native Hawaiian, Pacific Islander (AANHPI) and Arab, Middle Eastern, Muslim, and South Asian (AMEMSA) communities in Georgia and the Southeast.", website: "http://advancingjustice-atlanta.org/", email: "info@advancingjustice-atlanta.org")


# Florida
miamiclimate = Organizer.create(title: "The Miami Climate Alliance", img: "http://code.gabriellealexa.com/icons/icon-miami.jpg", about: "Since its creation in 2015, the Miami Climate Alliance has built urgency, power, and cohesion around climate change and sea level rise by achieving significant policy wins and working to establish a model for just, equitable, and resilient communities.", website: "http://miamiclimatealliance.org/", email: "miamiclimatealliance@gmail.com")
dd = Organizer.create(title: "Dream Defenders", img: "http://code.gabriellealexa.com/icons/icon-dream.jpg", about: "Dream Defenders have created a homeless service system which is open 7 days/week where they provide showers, bathrooms, wash stations, tents, testing, food and clothing in the historically Black community of Overtown, Miami.", website: "https://dreamdefenders.org/", email: "info@dreamdefenders.org")
smiletrust2 = Organizer.create(title: "The Smile Trust: Miami", img: "http://code.gabriellealexa.com/icons/icon-smile.jpg", about: "The Smile Trust have taken on the task to provide resources, education, jobs, and housing to combat poverty and homelessness.", website: "https://mthsmile.com/", email: "info@mthsmile.com")
sws = Organizer.create(title: "Sex Worker Solidarity Network", img: "http://code.gabriellealexa.com/icons/icon-swrel.jpg", about: "The Sex Worker Solidarity Network was formed by sex workers of all backgrounds in the Tampa Bay Area to provide safe spaces and resources for each other.", website: "")

# Arizona
blckphoenix = Organizer.create(title: "Black Phoenix Organizing Collective", img: "http://code.gabriellealexa.com/icons/icon-des.jpg", about: "Black Phoenix Organizing Collective has created a housing program that builds out tenant rights programming and rent strike protections, pop up charging stations across the city.", website: "https://blackphxoc.org/", email: "admin@blackphxoc.org")
masslib = Organizer.create(title: "Mass Liberation Arizona", img: "http://code.gabriellealexa.com/icons/icon-decar.jpg", about: "Since the start of the COVID19 crisis, Mass Liberation Arizona have been focused on getting people released from jail and prison and creating safe conditions of confinement for those still there.", website: "https://www.masslibaz.org/", email: "lola@masslibaz.org")

# Pennsylvania
frntline = Organizer.create(title: "Frontline Dads Inc.", img: "http://code.gabriellealexa.com/icons/icon-front.jpg", about: "Frontline Dads Inc provide food and groceries to people impacted by the COVID-19 pandemic. They bail out vulnerable people, lobby for the release of others being held on cash bail and detainers. They provide housing for people being released from jail as a result of the COVID-19 pandemic.", website: "http://www.frontlinedads.org/", email: "frontlinedads@aol.com")
malik = Organizer.create(title: "Malik Neal", img: "http://code.gabriellealexa.com/icons/icon-malik.jpg", about: "Director of the Philadelphia Bail Fund and organizer advocating for an end to bail.", website: "http://phillybailfund.org", email: "malik@phillybailfund.org")
sis = Organizer.create(title: "SisTers PGH", img: "http://code.gabriellealexa.com/icons/icon-sis.jpg", about: "SisTers PGH is a transgender centered drop-in space, resource provider and shelter transitioning program based in Pittsburgh, PA.")

## Needs

gent = Need.create(title: "Gentrification", details: "Gentrification is a process of changing the character of a neighborhood through the influx of more affluent residents and businesses. Combatting it is important for stable communities.")
foodinsec = Need.create(title: "Food Insecurity", details: "Food insecurity describes a household's inability to provide enough food for every person in that household.")
climatechng = Need.create(title: "Climate Change", details: "Climate change describes slow fluctuations in climate patterns on a regional or global level.")
ab = Need.create(title: "Anti-Blackness", details: "Being Black in the United States comes with additional layers of policing and other forms of systemic oppression.")
bail = Need.create(title: "Money Bail", details: "An inherently racist and classist institution that disproportionately allows a greater number of Black Americans to serve pre-trial time for accused crimes.")
mutual = Need.create(title: "General Mutual Aid",details: "Mutual aid projects are a form of political participation in which people take responsibility for caring for one another and changing political conditions.")
decarceration = Need.create(title: "Decarceration", details: "Efforts to dramatically reduce jail/prison admissions in the United States.")
account = Need.create(title: "Accountability in Politics", details: "Refer to efforts to hold politicians accountable for harm.")
covid = Need.create(title: "COVID-19 Relief", details: "The coronavirus pandemic is more than just a health crisis. It’s also a financial and emotional crisis.")

## Organizer-Resources Joiners
OrganizerResource.create(organizer_id: bkcollect.id, resource_id: thecollective.id)
OrganizerResource.create(organizer_id: e4f.id, resource_id: bkshowslove.id)
OrganizerResource.create(organizer_id: miamiclimate.id, resource_id: thecollective.id)

OrganizerResource.create(organizer_id: nbo.id, resource_id: bmbo.id)
OrganizerResource.create(organizer_id: smiletrust1.id, resource_id: thecollective.id)
OrganizerResource.create(organizer_id: smiletrust2.id, resource_id: thecollective.id)
OrganizerResource.create(organizer_id: dd.id, resource_id: dactnow.id)
OrganizerResource.create(organizer_id: masslib.id, resource_id: dcariz.id)
OrganizerResource.create(organizer_id: leila.id, resource_id: metroatl.id)
OrganizerResource.create(organizer_id: lbr.id, resource_id: metroatl.id)
OrganizerResource.create(organizer_id: frntline.id, resource_id: frontline.id)
OrganizerResource.create(organizer_id: plan.id, resource_id: planff.id)
OrganizerResource.create(organizer_id: ryan.id, resource_id: ditch.id)
OrganizerResource.create(organizer_id: domestic.id, resource_id: coronavirus.id)
OrganizerResource.create(organizer_id: malik.id, resource_id: phillybail.id)
OrganizerResource.create(organizer_id: sis.id, resource_id: pitts.id)
OrganizerResource.create(organizer_id: smiletrust2.id, resource_id: smilemutual.id)
OrganizerResource.create(organizer_id: sws.id, resource_id: swrelief.id)
OrganizerResource.create(organizer_id: aaa.id, resource_id: aacovid.id)
OrganizerResource.create(organizer_id: handsgrp.id, resource_id: hands.id)
OrganizerResource.create(organizer_id: washmutual.id, resource_id: covidwash.id)

## Resource-Needs Joiners

ResourceNeed.create(resource_id: bkshowslove.id, need_id: mutual.id)
ResourceNeed.create(resource_id: thecollective.id, need_id: mutual.id)
ResourceNeed.create(resource_id: bkcommbf.id, need_id: bail.id)


ResourceNeed.create(resource_id: dactnow.id, need_id: account.id)
ResourceNeed.create(resource_id: dcariz.id, need_id: decarceration.id)
ResourceNeed.create(resource_id: metroatl.id, need_id: mutual.id)
ResourceNeed.create(resource_id: frontline.id, need_id: mutual.id)
ResourceNeed.create(resource_id: planff.id, need_id: bail.id)
ResourceNeed.create(resource_id: bmbo.id, need_id: bail.id)

ResourceNeed.create(resource_id: ditch.id, need_id: account.id)
ResourceNeed.create(resource_id: coronavirus.id, need_id: covid.id)
ResourceNeed.create(resource_id: phillybail.id, need_id: bail.id)
ResourceNeed.create(resource_id: pitts.id, need_id: covid.id)
ResourceNeed.create(resource_id: smilemutual.id, need_id: gent.id)
ResourceNeed.create(resource_id: swrelief.id, need_id: covid.id)
ResourceNeed.create(resource_id: aacovid.id, need_id: covid.id)
ResourceNeed.create(resource_id: atlsolid.id, need_id: bail.id)

ResourceNeed.create(resource_id: hands.id, need_id: covid.id)
ResourceNeed.create(resource_id: washmutual.id, need_id: covid.id)


