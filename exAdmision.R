#puntajes redondeados por escuela profesional
EdInicial <- c(
  2146, 1988, 1854, 1842, 1804, 1735, 1724, 1717, 1709,
  1645, 1615, 1604, 1578, 1552, 1549, 1529, 1511, 1487,
  1483, 1463, 1449, 1448, 1445, 1444, 1431, 1416
)

IngCivil <- c(
  2123, 1996, 1883, 1850, 1837, 1789, 1772, 1770, 1768,
  1761, 1742, 1733, 1726, 1724, 1722, 1712, 1705, 1705,
  1704, 1688, 1678, 1669, 1665, 1644, 1641, 1635
)

#estadísticos descriptivos
media_EdInicial <- mean(EdInicial)
media_IngCivil <- mean(IngCivil)

sd_EdInicial <- sd(EdInicial)
sd_IngCivil <- sd(IngCivil)

covarianza <- cov(EdInicial, IngCivil)

# Mostrar resultados
cat("Educación Inicial - Media:", media_EdInicial, " | Desviación estándar:", sd_EdInicial, "\n")
cat("Ingeniería Civil  - Media:", media_IngCivil,  " | Desviación estándar:", sd_IngCivil, "\n")
cat("Covarianza entre grupos:", covarianza, "\n")

# Prueba t de Student para muestras independientes
t.test(EdInicial, IngCivil, var.equal = FALSE)  # Asumiendo varianzas distintas
