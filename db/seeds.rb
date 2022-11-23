# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# PENSER A FAIRE 'rails db:drop db:create db:migrate db:seed' pour mettre à jour la seed (pour les correspondances d'ID)

puts "destroying nations"
Nation.destroy_all
puts "destroying régions"
Region.destroy_all
puts "destroying départements"
Departement.destroy_all
puts "destroying communes"
Commune.destroy_all
puts "destroying formation politiques"
FormationPolitique.destroy_all
puts "destroying candidats"
Candidat.destroy_all
puts "destroying scrutins"
Scrutin.destroy_all

puts "creating nations"
Nation.create([
  {
    nom: "France"
  }
])

# # ------------- MANUAL SEED (without communes) -------------
puts "creating regions"
Region.create([
  {
    nation_id: 1,
    nom: 'Auvergne-Rhône-Alpes' #1
  },
  {
    nation_id: 1,
    nom: 'Bourgogne-Franche-Comté' #2
  },
  {
    nation_id: 1,
    nom: 'Bretagne' #3
  },
  {
    nation_id: 1,
    nom: 'Centre-Val de Loire' #4
  },
  {
    nation_id: 1,
    nom: 'Corse' #5
  },
  {
    nation_id: 1,
    nom: 'Grand Est' #6
  },
  {
    nation_id: 1,
    nom: 'Hauts-de-France' #7
  },
  {
    nation_id: 1,
    nom: 'Île-de-France' #8
  },
  {
    nation_id: 1,
    nom: 'Normandie' #9
  },
  {
    nation_id: 1,
    nom: 'Nouvelle-Aquitaine' #10
  },
  {
    nation_id: 1,
    nom: 'Occitanie' #11
  },
  {
    nation_id: 1,
    nom: 'Pays de la Loire' #12
  },
  {
    nation_id: 1,
    nom: "Provence-Alpes-Côte d'Azur" #13
  },
  {
    nation_id: 1,
    nom: 'Guadeloupe' #14
  },
  {
    nation_id: 1,
    nom: 'Martinique' #15
  },
  {
    nation_id: 1,
    nom: 'Guyane' #16
  },
  {
    nation_id: 1,
    nom: 'La Réunion' #17
  },
  {
    nation_id: 1,
    nom: 'Mayotte' #18
  }
])

puts "creating départements"
Departement.create([
  {
    nom: "Ain",
    numero: "01",
    region_id: 1
  },
  {
    nom: "Aisne",
    numero: "02",
    region_id: 7
  },
  {
    nom: "Allier",
    numero: "03",
    region_id: 1
  },
  {
    nom: "Alpes-de-Haute-Provence",
    numero: "04",
    region_id: 13
  },
  {
    nom: "Hautes-Alpes",
    numero: "05",
    region_id: 13
  },
  {
    nom: "Alpes-Maritimes",
    numero: "06",
    region_id: 13
  },
  {
    nom: "Ardèche",
    numero: "07",
    region_id: 1
  },
  {
    nom: "Ardennes",
    numero: "08",
    region_id: 6
  },
  {
    nom: "Ariège",
    numero: "09",
    region_id: 11
  },
  {
    nom: "Aube",
    numero: "10",
    region_id: 6
  },
  {
    nom: "Aude",
    numero: "11",
    region_id: 11
  },
  {
    nom: "Aveyron",
    numero: "12",
    region_id: 11
  },
  {
    nom: "Bouches-du-Rhône",
    numero: "13",
    region_id: 13
  },
  {
    nom: "Calvados",
    numero: "14",
    region_id: 9
  },
  {
    nom: "Cantal",
    numero: "15",
    region_id: 1
  },
  {
    nom: "Charente",
    numero: "16",
    region_id: 10
  },
  {
    nom: "Charente-Maritime",
    numero: "17",
    region_id: 10
  },
  {
    nom: "Cher",
    numero: "18",
    region_id: 4
  },
  {
    nom: "Corrèze",
    numero: "19",
    region_id: 10
  },
  {
    nom: "Corse-du-Sud",
    numero: "2A",
    region_id: 5
  },
  {
    nom: "Haute-Corse",
    numero: "2B",
    region_id: 5
  },
  {
    nom: "Côte-d'Or",
    numero: "21",
    region_id: 2
  },
  {
    nom: "Côtes-d'Armor",
    numero: "22",
    region_id: 3
  },
  {
    nom: "Creuse",
    numero: "23",
    region_id: 10
  },
  {
    nom: "Dordogne",
    numero: "24",
    region_id: 10
  },
  {
    nom: "Doubs",
    numero: "25",
    region_id: 2
  },
  {
    nom: "Drôme",
    numero: "26",
    region_id: 1
  },
  {
    nom: "Eure",
    numero: "27",
    region_id: 9
  },
  {
    nom: "Eure-et-Loir",
    numero: "28",
    region_id: 4
  },
  {
    nom: "Finistère",
    numero: "29",
    region_id: 3
  },
  {
    nom: "Gard",
    numero: "30",
    region_id: 11
  },
  {
    nom: "Haute-Garonne",
    numero: "31",
    region_id: 11
  },
  {
    nom: "Gers",
    numero: "32",
    region_id: 11
  },
  {
    nom: "Gironde",
    numero: "33",
    region_id: 10
  },
  {
    nom: "Hérault",
    numero: "34",
    region_id: 11
  },
  {
    nom: "Ille-et-Vilaine",
    numero: "35",
    region_id: 3
  },
  {
    nom: "Indre",
    numero: "36",
    region_id: 4
  },
  {
    nom: "Indre-et-Loire",
    numero: "37",
    region_id: 4
  },
  {
    nom: "Isère",
    numero: "38",
    region_id: 1
  },
  {
    nom: "Jura",
    numero: "39",
    region_id: 2
  },
  {
    nom: "Landes",
    numero: "40",
    region_id: 10
  },
  {
    nom: "Loir-et-Cher",
    numero: "41",
    region_id: 4
  },
  {
    nom: "Loire",
    numero: "42",
    region_id: 1
  },
  {
    nom: "Haute-Loire",
    numero: "43",
    region_id: 1
  },
  {
    nom: "Loire-Atlantique",
    numero: "44",
    region_id: 12
  },
  {
    nom: "Loiret",
    numero: "45",
    region_id: 4
  },
  {
    nom: "Lot",
    numero: "46",
    region_id: 11
  },
  {
    nom: "Lot-et-Garonne",
    numero: "47",
    region_id: 10
  },
  {
    nom: "Lozère",
    numero: "48",
    region_id: 11
  },
  {
    nom: "Maine-et-Loire",
    numero: "49",
    region_id: 12
  },
  {
    nom: "Manche",
    numero: "50",
    region_id: 9
  },
  {
    nom: "Marne",
    numero: "51",
    region_id: 6
  },
  {
    nom: "Haute-Marne",
    numero: "52",
    region_id: 6
  },
  {
    nom: "Mayenne",
    numero: "53",
    region_id: 12
  },
  {
    nom: "Meurthe-et-Moselle",
    numero: "54",
    region_id: 6
  },
  {
    nom: "Meuse",
    numero: "55",
    region_id: 6
  },
  {
    nom: "Morbihan",
    numero: "56",
    region_id: 3
  },
  {
    nom: "Moselle",
    numero: "57",
    region_id: 6
  },
  {
    nom: "Nièvre",
    numero: "58",
    region_id: 2
  },
  {
    nom: "Nord",
    numero: "59",
    region_id: 7
  },
  {
    nom: "Oise",
    numero: "60",
    region_id: 7
  },
  {
    nom: "Orne",
    numero: "61",
    region_id: 9
  },
  {
    nom: "Pas-de-Calais",
    numero: "62",
    region_id: 7
  },
  {
    nom: "Puy-de-Dôme",
    numero: "63",
    region_id: 1
  },
  {
    nom: "Pyrénées-Atlantiques",
    numero: "64",
    region_id: 10
  },
  {
    nom: "Hautes-Pyrénées",
    numero: "65",
    region_id: 11
  },
  {
    nom: "Pyrénées-Orientales",
    numero: "66",
    region_id: 11
  },
  {
    nom: "Bas-Rhin",
    numero: "67",
    region_id: 6
  },
  {
    nom: "Haut-Rhin",
    numero: "68",
    region_id: 6
  },
  {
    nom: "Rhône",
    numero: "69",
    region_id: 1
  },
  {
    nom: "Haute-Saône",
    numero: "70",
    region_id: 2
  },
  {
    nom: "Saône-et-Loire",
    numero: "71",
    region_id: 2
  },
  {
    nom: "Sarthe",
    numero: "72",
    region_id: 12
  },
  {
    nom: "Savoie",
    numero: "73",
    region_id: 1
  },
  {
    nom: "Haute-Savoie",
    numero: "74",
    region_id: 1
  },
  {
    nom: "Paris",
    numero: "75",
    region_id: 8
  },
  {
    nom: "Seine-Maritime",
    numero: "76",
    region_id: 9
  },
  {
    nom: "Seine-et-Marne",
    numero: "77",
    region_id: 8
  },
  {
    nom: "Yvelines",
    numero: "78",
    region_id: 8
  },
  {
    nom: "Deux-Sèvres",
    numero: "79",
    region_id: 10
  },
  {
    nom: "Somme",
    numero: "80",
    region_id: 7
  },
  {
    nom: "Tarn",
    numero: "81",
    region_id: 11
  },
  {
    nom: "Tarn-et-Garonne",
    numero: "82",
    region_id: 11
  },
  {
    nom: "Var",
    numero: "83",
    region_id: 13
  },
  {
    nom: "Vaucluse",
    numero: "84",
    region_id: 13
  },
  {
    nom: "Vendée",
    numero: "85",
    region_id: 12
  },
  {
    nom: "Vienne",
    numero: "86",
    region_id: 10
  },
  {
    nom: "Haute-Vienne",
    numero: "87",
    region_id: 10
  },
  {
    nom: "Vosges",
    numero: "88",
    region_id: 6
  },
  {
    nom: "Yonne",
    numero: "89",
    region_id: 2
  },
  {
    nom: "Territoire de Belfort",
    numero: "90",
    region_id: 2
  },
  {
    nom: "Essonne",
    numero: "91",
    region_id: 8
  },
  {
    nom: "Hauts-de-Seine",
    numero: "92",
    region_id: 8
  },
  {
    nom: "Seine-Saint-Denis",
    numero: "93",
    region_id: 8
  },
  {
    nom: "Val-de-Marne",
    numero: "94",
    region_id: 8
  },
  {
    nom: "Val-d'Oise",
    numero: "95",
    region_id: 8
  },
  {
    nom: "Guadeloupe",
    numero: "971",
    region_id: 14
  },
  {
    nom: "Martinique",
    numero: "972",
    region_id: 15
  },
  {
    nom: "Guyane",
    numero: "973",
    region_id: 16
  },
  {
    nom: "La Réunion",
    numero: "974",
    region_id: 17
  },
  {
    nom: "Mayotte",
    numero: "976",
    region_id: 18
  }
])

# puts "creating communes"
# Commune.create([

# ])

puts "creating formations politiques"
FormationPolitique.create([
  {
    nom: "Lutte ouvrière (LO)",
    positionnement_politique: "Extrême gauche"
  },
  {
    nom: "Parti communiste français (PCF)",
    positionnement_politique: "Gauche"
  },
  {
    nom: "La République en marche (LREM)",
    positionnement_politique: "Centre"
  },
  {
    nom: "Résistons (RES)",
    positionnement_politique: "Divers"
  },
  {
    nom: "Rassemblement national (RN)",
    positionnement_politique: "Extrême droite"
  },
  {
    nom: "Reconquête (REC)",
    positionnement_politique: "Extrême droite"
  },
  {
    nom: "La France insoumise (LFI)",
    positionnement_politique: "Gauche"
  },
  {
    nom: "Parti socialiste (PS)",
    positionnement_politique: "Gauche"
  },
  {
    nom: "Europe Écologie Les Verts (EELV)",
    positionnement_politique: "Gauche"
  },
  {
    nom: "Les Républicains (LR)",
    positionnement_politique: "Droite"
  },
  {
    nom: "Nouveau Parti anticapitaliste (NPA)",
    positionnement_politique: "Extrême gauche"
  },
  {
    nom: "Debout la France (DLF)",
    positionnement_politique: "Extrême droite"
  }
])

puts "creating candidats"
Candidat.create([
  {
    nom: "Nathalie Arthaud",
    formation_politique_id: 1
  },
  {
    nom: "Fabien Roussel",
    formation_politique_id: 2
  },
  {
    nom: "Emmanuel Macron",
    formation_politique_id: 3
  },
  {
    nom: "Jean Lassalle",
    formation_politique_id: 4
  },
  {
    nom: "Marine Le Pen",
    formation_politique_id: 5
  },
  {
    nom: "Éric Zemmour",
    formation_politique_id: 6
  },
  {
    nom: "Jean-Luc Mélenchon",
    formation_politique_id: 7
  },
  {
    nom: "Anne Hidalgo",
    formation_politique_id: 8
  },
  {
    nom: "Yannick Jadot",
    formation_politique_id: 9
  },
  {
    nom: "Valérie Pécresse",
    formation_politique_id: 10
  },
  {
    nom: "Philippe Poutou",
    formation_politique_id: 11
  },
  {
    nom: "Nicolas Dupont-Aignan",
    formation_politique_id: 12
  }
])

puts "creating scrutins"
Scrutin.create([
  #1
  {
    mandat: "présidentielle",
    annee: 2022,
    tour: 1,
    inscrit_voix: 48_747_876,
    abstention_voix: 12_824_169,
    abstention_pourcentage_inscrits: 26.31,
    votant_voix: 35_923_707,
    votant_pourcentage_inscrits: 73.69,
    blancs_voix: 543_609,
    blancs_pourcentage_inscrits: 1.12,
    blancs_pourcentage_votants: 1.51,
    nuls_voix: 247_151,
    nuls_pourcentage_inscrits: 0.51,
    nuls_pourcentage_votants: 0.69,
    exprime_voix: 35_132_947,
    exprime_pourcentage_inscrits: 72.07,
    exprime_pourcentage_votants: 97.80
  },
  #2
  {
    mandat: "présidentielle",
    annee: 2022,
    tour: 2,
    inscrit_voix: 48_752_339,
    abstention_voix: 13_655_861,
    abstention_pourcentage_inscrits: 28.01,
    votant_voix: 35_096_478,
    votant_pourcentage_inscrits: 71.99,
    blancs_voix: 2_233_904,
    blancs_pourcentage_inscrits: 4.58,
    blancs_pourcentage_votants: 6.37,
    nuls_voix: 805_249,
    nuls_pourcentage_inscrits: 1.65,
    nuls_pourcentage_votants: 2.29,
    exprime_voix: 32_057_325,
    exprime_pourcentage_inscrits: 65.76,
    exprime_pourcentage_votants: 91.34
  }
])

puts 'creating résultats'
Resultat.create([
  {
    score_du_candidat_pourcentage: 58.55,
    score_du_candidat_voix: 18_768_639,
    scrutin_id: 2,
    candidat_id: 3
  },
  {
    score_du_candidat_pourcentage: 41.45,
    score_du_candidat_voix: 13_288_686,
    scrutin_id: 2,
    candidat_id: 5
  },
  {
    score_du_candidat_pourcentage: 0.56,
    score_du_candidat_voix: 197_094,
    scrutin_id: 1,
    candidat_id: 1
  },
  {
    score_du_candidat_pourcentage: 2.28,
    score_du_candidat_voix: 802_422,
    scrutin_id: 1,
    candidat_id: 2
  },
  {
    score_du_candidat_pourcentage: 27.85,
    score_du_candidat_voix: 9_783_058,
    scrutin_id: 1,
    candidat_id: 3
  },
  {
    score_du_candidat_pourcentage: 3.13,
    score_du_candidat_voix: 1_101_387,
    scrutin_id: 1,
    candidat_id: 4
  },
  {
    score_du_candidat_pourcentage: 23.15,
    score_du_candidat_voix: 8_133_828,
    scrutin_id: 1,
    candidat_id: 5
  },
  {
    score_du_candidat_pourcentage: 7.07,
    score_du_candidat_voix: 2_485_226,
    scrutin_id: 1,
    candidat_id: 6
  },
  {
    score_du_candidat_pourcentage: 21.95,
    score_du_candidat_voix: 7_712_520,
    scrutin_id: 1,
    candidat_id: 7
  },
  {
    score_du_candidat_pourcentage: 1.75,
    score_du_candidat_voix: 616_478,
    scrutin_id: 1,
    candidat_id: 8
  },
  {
    score_du_candidat_pourcentage: 4.63,
    score_du_candidat_voix: 1_627_853,
    scrutin_id: 1,
    candidat_id: 9
  },
  {
    score_du_candidat_pourcentage: 4.78,
    score_du_candidat_voix: 1_679_001,
    scrutin_id: 1,
    candidat_id: 10
  },
  {
    score_du_candidat_pourcentage: 0.77,
    score_du_candidat_voix: 268_904,
    scrutin_id: 1,
    candidat_id: 11
  },
  {
    score_du_candidat_pourcentage: 2.06,
    score_du_candidat_voix: 725_176,
    scrutin_id: 1,
    candidat_id: 12
  }
])

# ------------- SCRAPING SEED -------------

# puts "creating regions"
# Region.create([

# ])

# puts "creating départements"
# Departement.create([
# ])

# # puts "creating communes"
# # Commune.create([
# # ])

# puts "creating formations politiques"
# FormationPolitique.create([
# ])

# puts "creating candidats"
# Candidat.create([
# ])

# puts "creating scrutins"
# Scrutin.create([
# ])

# puts 'creating résultats'
# Resultat.create([
# ])
