Restaurant.destroy_all
Review.destroy_all

restaurants_attributes = [
  {
    name:          "Epicure au Bristol",
    address:       "112 rue du Fg St-Honoré 75008 Paris",
    category:      "french",
    phone_number:  "+33686209355"
  },
  {
    name:          "La truffière",
    address:       "4 rue Blainville 75005 Paris",
    category:      "french",
    phone_number:  "+33686209355"
  },
  {
    name:          "Le pré catelan",
    address:       "route de Suresnes 75016 Paris",
    category:      "french",
    phone_number:  "+33686209355"
  },
  {
    name:          "Les Fabricants",
    address:       "62 rue Jean-Pierre Timbaud, 75011 Paris",
    category:      "french",
    phone_number:  "+33686209355"
  },
  {
    name:          "L’Echoppe de Paris",
    address:       "16 rue Léon Frot, 75011 Paris",
    category:      "french",
    phone_number:  "+33686209355"
  }
]

reviews_attributes = [
  {
    content:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
    rating:   4
  },
  {
    content:  "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet",
    rating:   3
  },
  {
    content:  "Oeil vif, geste sûr: impossible de distinguer, dans les créations de Frédéric Anton...",
    rating:   4
  },
  {
    content:  "Une cuisine typique du Sud-Ouest, orchestrée par Aurélien Moreau.",
    rating:   5
  },
  {
    content:  "On y trouve des burgers, tartares & cafés originaux,des plats du jour issus de la street food du monde au coeur du 11ème.",
    rating:   3
  }
]

restaurants_attributes.each_with_index do |params, index|
  restaurant = Restaurant.create!(params)
  review = Review.new(reviews_attributes[index])
  review.restaurant = restaurant
  review.save!
end
