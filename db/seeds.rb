Rating.destroy_all
Activity.destroy_all




hike = Activity.create(
    name: "Hiking", 
    description: "Walking through the woods with no purpose.", 
    equipment: "Backpack full of hiking essentials, hiking boots",
    picture: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F34%2F2020%2F08%2F04%2Fwoman-hiking-mountain-getty-0720.jpg"
     )

ski = Activity.create(
    name: "Skiing",
    description: "Sliding down a mountain on some wood planks.",
    equipment: "Ski's and boots, winter outerwear, goggles, helmet, gloves",
    picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Ski_Famille_-_Family_Ski_Holidays.jpg/1200px-Ski_Famille_-_Family_Ski_Holidays.jpg"
)

log_rolling = Activity.create(
    name: "Log Rolling",
    description: "Spinning a log that is floating in a body of water.",
    equipment: "Just a log, body of water, good feet",
    picture: "https://www.travelwisconsin.com/uploads/blog/55/55eb4cff-ab08-49eb-ac7c-347548dfec59-logrolling.jpg"
)

Rating.create(rating: 2, activity: hike)
Rating.create(rating: 5, activity: ski)
Rating.create(rating: 4, activity: log_rolling)