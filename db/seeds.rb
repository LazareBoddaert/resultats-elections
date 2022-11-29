# https://github.com/mattnedrich/ruby-excel-library-examples
# https://github.com/woahdae/simple_xlsx_reader
require 'simple_xlsx_reader'

require 'benchmark'

# PENSER A FAIRE 'rails db:drop db:create db:migrate db:seed' pour mettre à jour la seed (pour les correspondances d'ID)

# puts "destroying nations"
# Nation.destroy_all
# puts "destroying régions"
# Region.destroy_all
# puts "destroying départements"
# Departement.destroy_all
# puts "destroying communes"
# Commune.destroy_all
puts "destroying résultats candidats"
ResultatCandidat.destroy_all
puts "destroying résultats communes"
ResultatCommune.destroy_all
puts "destroying formation politiques"
FormationPolitique.destroy_all
puts "destroying candidats"
Candidat.destroy_all
puts "destroying scrutins"
Scrutin.destroy_all


# ------------- TERRITOIRES  -------------

# puts "creating nations"
# Nation.create([
#   {
#     nom: "France"
#   }
# ])

# puts "creating regions"
# Region.create([
#   {
#     nation_id: 1,
#     nom: 'Auvergne-Rhône-Alpes' #1
#   },
#   {
#     nation_id: 1,
#     nom: 'Bourgogne-Franche-Comté' #2
#   },
#   {
#     nation_id: 1,
#     nom: 'Bretagne' #3
#   },
#   {
#     nation_id: 1,
#     nom: 'Centre-Val de Loire' #4
#   },
#   {
#     nation_id: 1,
#     nom: 'Corse' #5
#   },
#   {
#     nation_id: 1,
#     nom: 'Grand Est' #6
#   },
#   {
#     nation_id: 1,
#     nom: 'Hauts-de-France' #7
#   },
#   {
#     nation_id: 1,
#     nom: 'Île-de-France' #8
#   },
#   {
#     nation_id: 1,
#     nom: 'Normandie' #9
#   },
#   {
#     nation_id: 1,
#     nom: 'Nouvelle-Aquitaine' #10
#   },
#   {
#     nation_id: 1,
#     nom: 'Occitanie' #11
#   },
#   {
#     nation_id: 1,
#     nom: 'Pays de la Loire' #12
#   },
#   {
#     nation_id: 1,
#     nom: "Provence-Alpes-Côte d'Azur" #13
#   },
#   {
#     nation_id: 1,
#     nom: 'Guadeloupe' #14
#   },
#   {
#     nation_id: 1,
#     nom: 'Martinique' #15
#   },
#   {
#     nation_id: 1,
#     nom: 'Guyane' #16
#   },
#   {
#     nation_id: 1,
#     nom: 'La Réunion' #17
#   },
#   {
#     nation_id: 1,
#     nom: 'Mayotte' #18
#   },
#   {
#     nation_id: 1,
#     nom: 'Mayotte' #18
#   },
#   {
#     nation_id: 1,
#     nom: "Collectivité d'Outre-Mer" #19
#   },
#   {
#     nation_id: 1,
#     nom: "Français de l'étranger" #20
#   }
# ])

# puts "creating départements"
# Departement.create([
#   {
#     nom: "Ain",
#     numero: "01",
#     region_id: 1
#   },
#   {
#     nom: "Aisne",
#     numero: "02",
#     region_id: 7
#   },
#   {
#     nom: "Allier",
#     numero: "03",
#     region_id: 1
#   },
#   {
#     nom: "Alpes-de-Haute-Provence",
#     numero: "04",
#     region_id: 13
#   },
#   {
#     nom: "Hautes-Alpes",
#     numero: "05",
#     region_id: 13
#   },
#   {
#     nom: "Alpes-Maritimes",
#     numero: "06",
#     region_id: 13
#   },
#   {
#     nom: "Ardèche",
#     numero: "07",
#     region_id: 1
#   },
#   {
#     nom: "Ardennes",
#     numero: "08",
#     region_id: 6
#   },
#   {
#     nom: "Ariège",
#     numero: "09",
#     region_id: 11
#   },
#   {
#     nom: "Aube",
#     numero: "10",
#     region_id: 6
#   },
#   {
#     nom: "Aude",
#     numero: "11",
#     region_id: 11
#   },
#   {
#     nom: "Aveyron",
#     numero: "12",
#     region_id: 11
#   },
#   {
#     nom: "Bouches-du-Rhône",
#     numero: "13",
#     region_id: 13
#   },
#   {
#     nom: "Calvados",
#     numero: "14",
#     region_id: 9
#   },
#   {
#     nom: "Cantal",
#     numero: "15",
#     region_id: 1
#   },
#   {
#     nom: "Charente",
#     numero: "16",
#     region_id: 10
#   },
#   {
#     nom: "Charente-Maritime",
#     numero: "17",
#     region_id: 10
#   },
#   {
#     nom: "Cher",
#     numero: "18",
#     region_id: 4
#   },
#   {
#     nom: "Corrèze",
#     numero: "19",
#     region_id: 10
#   },
#   {
#     nom: "Corse-du-Sud",
#     numero: "2A",
#     region_id: 5
#   },
#   {
#     nom: "Haute-Corse",
#     numero: "2B",
#     region_id: 5
#   },
#   {
#     nom: "Côte-d'Or",
#     numero: "21",
#     region_id: 2
#   },
#   {
#     nom: "Côtes-d'Armor",
#     numero: "22",
#     region_id: 3
#   },
#   {
#     nom: "Creuse",
#     numero: "23",
#     region_id: 10
#   },
#   {
#     nom: "Dordogne",
#     numero: "24",
#     region_id: 10
#   },
#   {
#     nom: "Doubs",
#     numero: "25",
#     region_id: 2
#   },
#   {
#     nom: "Drôme",
#     numero: "26",
#     region_id: 1
#   },
#   {
#     nom: "Eure",
#     numero: "27",
#     region_id: 9
#   },
#   {
#     nom: "Eure-et-Loir",
#     numero: "28",
#     region_id: 4
#   },
#   {
#     nom: "Finistère",
#     numero: "29",
#     region_id: 3
#   },
#   {
#     nom: "Gard",
#     numero: "30",
#     region_id: 11
#   },
#   {
#     nom: "Haute-Garonne",
#     numero: "31",
#     region_id: 11
#   },
#   {
#     nom: "Gers",
#     numero: "32",
#     region_id: 11
#   },
#   {
#     nom: "Gironde",
#     numero: "33",
#     region_id: 10
#   },
#   {
#     nom: "Hérault",
#     numero: "34",
#     region_id: 11
#   },
#   {
#     nom: "Ille-et-Vilaine",
#     numero: "35",
#     region_id: 3
#   },
#   {
#     nom: "Indre",
#     numero: "36",
#     region_id: 4
#   },
#   {
#     nom: "Indre-et-Loire",
#     numero: "37",
#     region_id: 4
#   },
#   {
#     nom: "Isère",
#     numero: "38",
#     region_id: 1
#   },
#   {
#     nom: "Jura",
#     numero: "39",
#     region_id: 2
#   },
#   {
#     nom: "Landes",
#     numero: "40",
#     region_id: 10
#   },
#   {
#     nom: "Loir-et-Cher",
#     numero: "41",
#     region_id: 4
#   },
#   {
#     nom: "Loire",
#     numero: "42",
#     region_id: 1
#   },
#   {
#     nom: "Haute-Loire",
#     numero: "43",
#     region_id: 1
#   },
#   {
#     nom: "Loire-Atlantique",
#     numero: "44",
#     region_id: 12
#   },
#   {
#     nom: "Loiret",
#     numero: "45",
#     region_id: 4
#   },
#   {
#     nom: "Lot",
#     numero: "46",
#     region_id: 11
#   },
#   {
#     nom: "Lot-et-Garonne",
#     numero: "47",
#     region_id: 10
#   },
#   {
#     nom: "Lozère",
#     numero: "48",
#     region_id: 11
#   },
#   {
#     nom: "Maine-et-Loire",
#     numero: "49",
#     region_id: 12
#   },
#   {
#     nom: "Manche",
#     numero: "50",
#     region_id: 9
#   },
#   {
#     nom: "Marne",
#     numero: "51",
#     region_id: 6
#   },
#   {
#     nom: "Haute-Marne",
#     numero: "52",
#     region_id: 6
#   },
#   {
#     nom: "Mayenne",
#     numero: "53",
#     region_id: 12
#   },
#   {
#     nom: "Meurthe-et-Moselle",
#     numero: "54",
#     region_id: 6
#   },
#   {
#     nom: "Meuse",
#     numero: "55",
#     region_id: 6
#   },
#   {
#     nom: "Morbihan",
#     numero: "56",
#     region_id: 3
#   },
#   {
#     nom: "Moselle",
#     numero: "57",
#     region_id: 6
#   },
#   {
#     nom: "Nièvre",
#     numero: "58",
#     region_id: 2
#   },
#   {
#     nom: "Nord",
#     numero: "59",
#     region_id: 7
#   },
#   {
#     nom: "Oise",
#     numero: "60",
#     region_id: 7
#   },
#   {
#     nom: "Orne",
#     numero: "61",
#     region_id: 9
#   },
#   {
#     nom: "Pas-de-Calais",
#     numero: "62",
#     region_id: 7
#   },
#   {
#     nom: "Puy-de-Dôme",
#     numero: "63",
#     region_id: 1
#   },
#   {
#     nom: "Pyrénées-Atlantiques",
#     numero: "64",
#     region_id: 10
#   },
#   {
#     nom: "Hautes-Pyrénées",
#     numero: "65",
#     region_id: 11
#   },
#   {
#     nom: "Pyrénées-Orientales",
#     numero: "66",
#     region_id: 11
#   },
#   {
#     nom: "Bas-Rhin",
#     numero: "67",
#     region_id: 6
#   },
#   {
#     nom: "Haut-Rhin",
#     numero: "68",
#     region_id: 6
#   },
#   {
#     nom: "Rhône",
#     numero: "69",
#     region_id: 1
#   },
#   {
#     nom: "Haute-Saône",
#     numero: "70",
#     region_id: 2
#   },
#   {
#     nom: "Saône-et-Loire",
#     numero: "71",
#     region_id: 2
#   },
#   {
#     nom: "Sarthe",
#     numero: "72",
#     region_id: 12
#   },
#   {
#     nom: "Savoie",
#     numero: "73",
#     region_id: 1
#   },
#   {
#     nom: "Haute-Savoie",
#     numero: "74",
#     region_id: 1
#   },
#   {
#     nom: "Paris",
#     numero: "75",
#     region_id: 8
#   },
#   {
#     nom: "Seine-Maritime",
#     numero: "76",
#     region_id: 9
#   },
#   {
#     nom: "Seine-et-Marne",
#     numero: "77",
#     region_id: 8
#   },
#   {
#     nom: "Yvelines",
#     numero: "78",
#     region_id: 8
#   },
#   {
#     nom: "Deux-Sèvres",
#     numero: "79",
#     region_id: 10
#   },
#   {
#     nom: "Somme",
#     numero: "80",
#     region_id: 7
#   },
#   {
#     nom: "Tarn",
#     numero: "81",
#     region_id: 11
#   },
#   {
#     nom: "Tarn-et-Garonne",
#     numero: "82",
#     region_id: 11
#   },
#   {
#     nom: "Var",
#     numero: "83",
#     region_id: 13
#   },
#   {
#     nom: "Vaucluse",
#     numero: "84",
#     region_id: 13
#   },
#   {
#     nom: "Vendée",
#     numero: "85",
#     region_id: 12
#   },
#   {
#     nom: "Vienne",
#     numero: "86",
#     region_id: 10
#   },
#   {
#     nom: "Haute-Vienne",
#     numero: "87",
#     region_id: 10
#   },
#   {
#     nom: "Vosges",
#     numero: "88",
#     region_id: 6
#   },
#   {
#     nom: "Yonne",
#     numero: "89",
#     region_id: 2
#   },
#   {
#     nom: "Territoire de Belfort",
#     numero: "90",
#     region_id: 2
#   },
#   {
#     nom: "Essonne",
#     numero: "91",
#     region_id: 8
#   },
#   {
#     nom: "Hauts-de-Seine",
#     numero: "92",
#     region_id: 8
#   },
#   {
#     nom: "Seine-Saint-Denis",
#     numero: "93",
#     region_id: 8
#   },
#   {
#     nom: "Val-de-Marne",
#     numero: "94",
#     region_id: 8
#   },
#   {
#     nom: "Val-d'Oise",
#     numero: "95",
#     region_id: 8
#   },
#   {
#     nom: "Guadeloupe",
#     numero: "971",
#     region_id: 14
#   },
#   {
#     nom: "Martinique",
#     numero: "972",
#     region_id: 15
#   },
#   {
#     nom: "Guyane",
#     numero: "973",
#     region_id: 16
#   },
#   {
#     nom: "La Réunion",
#     numero: "974",
#     region_id: 17
#   },
#   {
#     nom: "Mayotte",
#     numero: "976",
#     region_id: 18
#   },
#   {
#     nom: "Nouvelle-Calédonie",
#     numero: "ZN",
#     region_id: 19
#   }, #102
#   {
#     nom: "Polynésie Française",
#     numero: "ZP",
#     region_id: 19
#   }, #103
#   {
#     nom: "Saint-Pierre-et-Miquelon",
#     numero: "ZS",
#     region_id: 19
#   }, #104
#   {
#     nom: "Wallis-et-Futuna",
#     numero: "ZW",
#     region_id: 19
#   }, #105
#   {
#     nom: "Saint-Martin/Saint-Barthélemy",
#     numero: "ZX",
#     region_id: 19
#   }, #106
#   {
#     nom: "Français établis hors de France",
#     numero: "ZZ",
#     region_id: 20
#   } #107
# ])


def recuperation_liste_communes(liste_communes_brut)
  @row_count = 0
  @col_count = 0

  liste_communes_brut.sheets.first.rows.each do |row|
    @row_count += 1
    next if @row_count < 7

    row.each do |cell|
      @col_count += 1
      case @col_count
      when 1
        @departement = Departement.find_by(numero: cell)
        @departement_id = @departement.id
        @commune = Commune.create!(departement_id: @departement_id)
      when 2
        @commune.update(nom: cell)
      when 3
        @col_count = 0
        break
      end
    end
  end
end

liste_communes_brut = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/liste_communes_par_departement.xlsx'

# puts 'creating communes'
# recuperation_liste_communes(liste_communes_brut)


# ------------- ELECTIONS -------------

def recuperation_donnees_resultats(resultats_brut)
  @row_count = 0
  @count = 0

  resultats_brut.sheets.first.rows.each do |row|
    @col_count = 0
    @row_count += 1
    p "ligne: #{@row_count}"

    if @row_count == 1
      # Récupère les infos générales sur le scrutin
      row.each do |cell|
        p cell
        @col_count += 1
        case @col_count
        when 1
          @mandat_scrutin = cell
        when 2
          @annee_scrutin = cell
        when 3
          @scrutin = Scrutin.create!(mandat: @mandat_scrutin, annee: @annee_scrutin, tour: cell)
          @col_count = 0
          break
        end
      end
    elsif @row_count == 2
      next
    else
      @blancs_et_nuls = false
      row.each do |cell|
        @col_count += 1

        # Récupère les données générales du vote
        case @col_count
        when 1
          if Departement.where("nom ILIKE ?", cell).nil?
            @dep_nom = I18n.transliterate(cell).downcase.gsub(/\W/, " ") # Retire les accents
            case @dep_nom
            when /(nouvelle caledonie)/
              @dep_commune = Departement.find(102) # Nouvelle-Calédonie
              p @dep_commune.nom
            when /(polynesie francaise)/
              @dep_commune = Departement.find(103) # Polynésie Française
              p @dep_commune.nom
            when /(saint pierre et miquelon)|(saint pierre)|(miquelon)/
              @dep_commune = Departement.find(104) # Saint-Pierre-et-Miquelon
              p @dep_commune.nom
            when /(wallis et futuna)|(wallis)|(futuna)/
              @dep_commune = Departement.find(105) # Wallis-et-Futuna
              p @dep_commune.nom
            when /(saint martin saint barthelemy)|(saint martin)|(saint barthelemy)/
              @dep_commune = Departement.find(106) # Saint-Martin/Saint-Barthélemy
              p @dep_commune.nom
            when /(hors de france)$|(etranger)$/
              @dep_commune = Departement.find(107) # Français établis hors de France
              p @dep_commune.nom
            end
          else
            @dep_commune = Departement.where("nom ILIKE ?", cell).first
          end
          p "Département #{@dep_nom} non trouvé. Ligne #{@row_count}" if @dep_commune.nil?
        when 2
          if Commune.where("nom ILIKE ?", cell).where(departement_id: @dep_commune.id).nil?
            @commune = Commune.create!(nom: cell.capitalize, departement_id: @dep_commune.id)
            p "Commune créée. Ligne #{@row_count}"
          else
            @commune = Commune.where("nom ILIKE ?", cell).where(departement_id: @dep_commune.id)
          end
        when 3
          @inscrit_nombre = cell
        when 4
          @abstention_nombre = cell
        when 5
          @abstention_pourcentage_inscrit = cell
        when 6
          @votant_nombre = cell
        when 7
          @votant_pourcentage_inscrit = cell
        when 8
          if cell.nil?
            @blancs_et_nuls = true
            @blancs_nombre = nil
          else
            @blancs_nombre = cell
          end
        when 9
          if cell.nil?
            @blancs_pourcentage_inscrit = nil
          else
            @blancs_pourcentage_inscrit = cell
          end
        when 10
          if cell.nil?
            @blancs_pourcentage_votant = nil
          else
            @blancs_pourcentage_votant = cell
          end
        when 11
          if @blancs_et_nuls == true
            @blancs_nuls_nombre = cell
            @nuls_nombre = nil
          else
            @nuls_nombre = cell
            @blancs_nuls_nombre = nil
          end
        when 12
          if @blancs_et_nuls == true
            @blancs_nuls_pourcentage_inscrit = cell
            @nuls_pourcentage_inscrit = nil
          else
            @nuls_pourcentage_inscrit = cell
            @blancs_nuls_pourcentage_inscrit = nil
          end
        when 13
          if @blancs_et_nuls == true
            @blancs_nuls_pourcentage_votant = cell
            @nuls_pourcentage_votant = nil
          else
            @nuls_pourcentage_votant = cell
            @blancs_nuls_pourcentage_votant = nil
          end
        when 14
          @exprime_nombre = cell
        when 15
          @exprime_pourcentage_inscrit = cell
        when 16
          ResultatCommune.create!(
            commune_id: @commune.id,
            scrutin_id: @scrutin.id,
            inscrit_nombre: @inscrit_nombre,
            abstention_nombre: @abstention_nombre,
            abstention_pourcentage_inscrit: @abstention_pourcentage_inscrit,
            votant_nombre: @votant_nombre,
            votant_pourcentage_inscrit: @votant_pourcentage_inscrit,
            blancs_nombre: @blancs_nombre,
            blancs_pourcentage_inscrit: @blancs_pourcentage_inscrit,
            blancs_pourcentage_votant: @blancs_pourcentage_votant,
            nuls_nombre: @nuls_nombre,
            nuls_pourcentage_inscrit: @nuls_pourcentage_inscrit,
            nuls_pourcentage_votant: @nuls_pourcentage_votant,
            blancs_nuls_nombre: @blancs_nuls_nombre,
            blancs_nuls_pourcentage_inscrit: @blancs_nuls_pourcentage_inscrit,
            blancs_nuls_pourcentage_votant: @blancs_nuls_pourcentage_votant,
            exprime_nombre: @exprime_nombre,
            exprime_pourcentage_inscrit: @exprime_pourcentage_inscrit,
            exprime_pourcentage_votant: cell
          )
        end

        # Récupère les scores des candidats
        if @col_count > 16
          @count += 1
          case @count
          when 1
            if cell.nil?
              @count = 0
              break
            else
              next
            end
          when 2
            @nom_candidat = cell.capitalize
          when 3
            nom_complet_candidat = "#{cell.capitalize} #{@nom_candidat}"
            if Candidat.find_by(nom: nom_complet_candidat).nil?
              @candidat = Candidat.create!(nom: nom_complet_candidat)
            else
              @candidat = Candidat.find_by(nom: nom_complet_candidat)
            end
          when 4
            @score_candidat_nombre = cell
          when 5
            @score_candidat_pourcentage_inscrit = cell
          when 6
            ResultatCandidat.create!(
              scrutin_id: @scrutin.id,
              candidat_id: @candidat.id,
              score_candidat_nombre: @score_candidat_nombre,
              score_candidat_pourcentage_inscrit: @score_candidat_pourcentage_inscrit,
              score_candidat_pourcentage_exprime: cell
            )
            @count = 0
          end
        end
      end
    end
  end
end

puts 'Creating Scrutin'
# ------- PRESIDENTIELLES -------
# ------ 2022 ------
# ----- T1 -----
# puts 'creating pdt 2022 T1'
# resultats_brut = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/presidentielles/2022/t1/presidentielle-2022-T1-par-commune.xlsx'
# recuperation_donnees_resultats(resultats_brut)

# ----- T2 -----
# puts 'creating pdt 2022 T2'
# resultats_brut = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/presidentielles/2022/t2/presidentielle-2022-T2-par-commune.xlsx'
# recuperation_donnees_resultats(resultats_brut)





# ---------- TEST ----------

# p "---TEST---"
def test(resultats_test)
  @row_count = 0
  @count = 0

  resultats_test.sheets.first.rows.each do |row|
    @col_count = 0
    @row_count += 1

    if @row_count == 1
      # Récupère les infos générales sur le scrutin
      row.each do |cell|
        @col_count += 1
        case @col_count
        when 1
          @mandat_scrutin = cell
        when 2
          @annee_scrutin = cell
        when 3
          @scrutin = Scrutin.create!(mandat: @mandat_scrutin, annee: @annee_scrutin, tour: cell)
          @col_count = 0
          break
        end
      end
    elsif @row_count == 2
      next
    else
      @blancs_et_nuls = false
      row.each do |cell|
        @col_count += 1

        # Récupère les données générales du vote
        case @col_count
        when 1
          p "cell: #{cell}"
          if Departement.find_by(nom: cell.capitalize).nil?
            @dep_nom = I18n.transliterate(cell).downcase.gsub(/\W/, " ") # Retire les accents
            case @dep_nom
            when /(nouvelle caledonie)/
              @dep_commune = Departement.find(102) # Nouvelle-Calédonie
              p @dep_commune.nom
            when /(polynesie francaise)/
              @dep_commune = Departement.find(103) # Polynésie Française
              p @dep_commune.nom
            when /(saint pierre et miquelon)|(saint pierre)|(miquelon)/
              @dep_commune = Departement.find(104) # Saint-Pierre-et-Miquelon
              p @dep_commune.nom
            when /(wallis et futuna)|(wallis)|(futuna)/
              @dep_commune = Departement.find(105) # Wallis-et-Futuna
              p @dep_commune.nom
            when /(saint martin saint barthelemy)|(saint martin)|(saint barthelemy)/
              @dep_commune = Departement.find(106) # Saint-Martin/Saint-Barthélemy
              p @dep_commune.nom
            when /(hors de france)$|(etranger)$/
              @dep_commune = Departement.find(107) # Français établis hors de France
              p @dep_commune.nom
            end
          else
            @dep_commune = Departement.find_by(nom: cell.capitalize)
            p "dep trouvé: #{@dep_commune.nom}"
          end
          p "------------------ Département #{@dep_nom} non trouvé" if @dep_commune.nil?
        when 2
          if Commune.find_by(nom: cell).nil?
            @commune = Commune.create!(nom: cell, departement_id: @dep_commune.id)
          else
            @commune = Commune.find_by(nom: cell)
          end
        when 3
          @col_count = 0
          break
        end
      end
    end
  end
end

resultats_test = SimpleXlsxReader.open '/Users/lazareboddaert/code/LazareBoddaert/projets-perso/resultats-elections-data/TEST-resultats-elections.xlsx'
recuperation_donnees_resultats(resultats_test)

# ---------- FIN TEST ----------
