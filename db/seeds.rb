Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    description:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
    stars:        4
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    description:  "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet",
    stars:        3
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    description:  "Oeil vif, geste sûr: impossible de distinguer, dans les créations de Frédéric Anton...",
    stars:        4
  },
  {
    name:         "Les Fabricants",
    address:      "62 rue Jean-Pierre Timbaud, 75011 Paris",
    description:  "Une cuisine typique du Sud-Ouest, orchestrée par Aurélien Moreau.",
    stars:        5
  },
  {
    name:         "L’Echoppe de Paris",
    address:      "16 rue Léon Frot, 75011 Paris",
    description:  "On y trouve des burgers, tartares & cafés originaux,des plats du jour issus de la street food du monde au coeur du 11ème.",
    stars:        3
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
