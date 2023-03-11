#install.packages('qrcode')
library(qrcode)

code <- qr_code('https://jens-klenke.github.io/Desk_Stat_WiSe_22', ecl = 'H')

print(code)
plot(code)

# svg 
generate_svg(code, filename = here::here('qr_code/qr_code.svg'), 
              size = 600)



######

code <- qr_code('https://www.km-bw.de/site/pbs-bw-new/get/documents/KULTUS.Dachmandant/KULTUS/Dienststellen/lis-in-bw/Schulsport/WSB/Bewegungspausen_n.pdf', ecl = 'H')
code_1 <- qr_code('https://www.dropbox.com/s/be0ygpldyp82m2i/d2_Test.pdf?dl=0', ecl = 'H')
print(code)
plot(code_1)

# svg 
generate_svg(code, filename = here::here('qr_code/qr_code.svg'), 
             size = 600, foreground = "#004C93")
generate_svg(code_1, filename = here::here('qr_code/qr_code.svg'), 
             size = 600, foreground = "#004C93")
