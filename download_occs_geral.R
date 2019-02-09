library(rgbif)


lista_estados <- c(
  "Rio de Janeiro",
  "Amazonas",
  "Minas Gerais",
  "Espírito Santo",
  "Pará",
  "Bahia",
  "Maranhão",
  "Piauí",
  "São Paulo",
  "Paraná",
  "Santa Catarina",
  "Rio Grande do Sul",
  "Goiás",
  "Distrito Federal",
  "Para",
  "Maranhao",
  "Piaui",
  "Parana",
  "Sao Paulo",
  "Goias",
  "Espirito Santo"
)

for (estado in lista_estados[-1]) {
  occs <- occ_search(country = "BR",
                    kingdomKey = 6,
                    stateProvince = estado,
                    limit = 199000,
                    hasCoordinate = TRUE,
                    basisOfRecord = "PRESERVED_SPECIMEN",
                    hasGeospatialIssue = F,
                    return = 'data'
                    #fields = "minimal"
  )
  write.csv(occs, paste(estado, ".csv"))

}




