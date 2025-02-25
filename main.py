import qrcode

data = input("Ingrese la URL de un sitio web (Se generara un código QR): ")

qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,  
    border=4,    
)

qr.add_data(data)
qr.make(fit=True)

img = qr.make_image(fill_color="black", back_color="white")

img.save("Qr.png")

print("Código QR generado y guardado con éxito como Qr.png") 
