a1 = Album.create({title: 'Take Care', description: 'An emotional album by Drake after a tough breakup', artist: 'Drake', year: 2011 })
a2 = Album.create({title: 'Starboy', description: 'After the massive hit of BBTM, he is back with a new different album and a new haircut without a pineapple', artist: 'The Weeknd', year: 2016 })
a3 = Album.create({title: 'FUTURE', description: 'After his hit single with The Weeknd called Low Life, he is back with something new', artist: 'Future', year: 2017 })
a4 = Album.create({title: 'Gang Signs and Prayers', description: 'After his big break through with Shut Up, stiff chocolate makes his debut album', artist: 'Stormzy', year: 2017 })
a5 = Album.create({title: 'Purpose', description: 'JB spent 2 years creating an album signifying his life struggles, particularly his breakup with Selena Gomez', artist: 'Justin Bieber', year: 2015 })
a6 = Album.create({title: 'Born Sinner', description: 'After his break-through album Cole World, he is back with another album worthy of winning GRAMMYS', artist: 'J Cole', year: 2013 })
a7 = Album.create({title: 'X', description: 'An album by Englands favourite ginger man and X Factor winner', artist: 'Ed Sheeran', year: 2014 })
a8 = Album.create({title: 'Revival', description: 'Possibly the greatest rapper to hold the mic, Eminem makes a return after 3 years looking to put himself back on the radar of music', artist: 'Eminem', year: 2017 })
a9 = Album.create({title: 'Views', description: 'Possibly the most anticipated album ever in the modern era, Drake returns with a mouth watering album', artist: 'Drake', year: 2016 })
a10 = Album.create({title: 'More Life', description: 'After the success of Views, we thought Drake could never top it, but More Life promises to be full of surprises', artist: 'Drake', year: 2017})
a11 = Album.create({title: 'Mind of my own', description: 'After leaving One Direction, half Brit-Pakistani Zayn Malik releases his first ever solo album', artist: 'Zayn Malik', year: 2016})
a12 = Album.create({title: '7/27', description: 'The former X Factor winners are back and as hot as ever as they release a stunning album which features songs such as "Work From Home"', artist: 'Fifth Harmony', year: 2016})

##this was for testing purposes - PLEASE NOTE that a lot of these albums and some others show the edit and delete album button without signing in because
##of the fact that a lot of these were seeded and I created some albums for testing purposes before user authentication, therefore this allows this to happen
## therefore user id was nil and authentication didn't work