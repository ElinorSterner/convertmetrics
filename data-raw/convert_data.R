## code to prepare `convert_data` dataset goes here

convert_data <- data.frame(
  # Distance measurements along the river (in kilometers)
  distance_km = rep(c(10, 20, 30, 40, 50), each = 12),
  distance_miles = rep(c(6.214, 12.428, 18.642, 24.856, 31.070), each = 12),
  distance_yards = rep(c(10936.1, 21872.2, 32808.3, 43744.4, 54680.5), each = 12),
  distance_meters = rep(c(10000, 20000, 30000, 40000, 50000), each = 12),
  distance_inches = rep(c(3937.01, 7874.02, 11811.03, 15748.04, 19685.05), each = 12),
  distance_centimeters = rep(c(1000000, 2000000, 3000000, 4000000, 5000000), each = 12),
  # Weight measurements of sediment samples (in kilograms)
  sediment_kg = rep(c(0.5, 1, 1.5, 2, 2.5), each = 12),
  sediment_lbs = rep(c(1.10231, 2.20462, 3.30693, 4.40924, 5.51155), each = 12),
  sediment_catty = rep(c(1, 2, 3, 4, 5), each = 12),
  sediment_g = rep(c(500, 1000, 1500, 2000, 2500), each = 12),
  sediment_tael = rep(c(10, 20, 30, 40, 50), each = 12),
  # Volume measurements of water samples (in liters)
  water_liters = rep(c(10, 20, 30, 40, 50), each = 12),
  water_gallons = rep(c(2.64172, 5.28344, 7.92516, 10.56688, 13.2086), each = 12),
  water_cubic_meters = rep(c(0.01, 0.02, 0.03, 0.04, 0.05), each = 12)
)


usethis::use_data(convert_data, overwrite = TRUE)
