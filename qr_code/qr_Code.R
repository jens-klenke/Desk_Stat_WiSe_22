#install.packages('qrcode')
library(qrcode)

code <- qr_code('https://jens-klenke.github.io/Desk_Stat_WiSe_22', ecl = 'H')

print(code)
plot(code)

# svg 
generate_svg(code, filename = here::here('qr_code/qr_code.svg'), 
              size = 600)

