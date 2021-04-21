# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bookind = Bookind.create( name: "Cientificos")
bookind = Bookind.create( name: "Aventuras")
bookind = Bookind.create( name: "Novelas")
bookind = Bookind.create( name: "Biologia")
bookind = Bookind.create( name: "Cuento") 

categories = Category.create(name: "Papel", private: true)
categories = Category.create(name: "audiolibros", private: false)
categories = Category.create(name: "electronicos", private: true)
categories = Category.create(name: "informativos", private: false)
categories = Category.create(name: "literatura ilustrada", private: true)

bookind_id = Bookmarck.create(name:"The Feynman Lectures on Physics", direction:"https://feynmanlectures.caltech.edu/", category_id:3, bookind_id: 1)
bookind_id = Bookmarck.create(name:"El gen egoísta", direction:"https://www.uv.mx/personal/tcarmona/files/2010/08/DAUKINS-1989-EL-GEN-EGOISTA.pdf", category_id:3, bookind_id: 1)
bookind_id = Bookmarck.create(name:"Pensar rápido, pensar despacio", direction:"https://catedradatos.com.ar/media/kahneman_pensar.pdf", category_id:3, bookind_id: 1)
bookind_id = Bookmarck.create(name:"Brevísima historia del tiempo", direction:"http://biblioteca.inu.edu.sv/?wpfb_dl=232", category_id:3, bookind_id: 1)
bookind_id = Bookmarck.create(name:"El bonobo y los diez mandamientos", direction:"http://mimosa.pntic.mec.es/~sferna18/EJERCICIOS/2015-16/De-Waal_La-etica-en-los-primates.pdf", category_id:3, bookind_id: 1)

bookind_id = Bookmarck.create(name:"Tarzán de los monos", direction:"https://www.sonolibro.com/audiolibros/edgar-rice-burroughs/tarzan-de-los-monos", category_id:2, bookind_id: 2)
bookind_id = Bookmarck.create(name:"Un cuento de las montañas escabrosas", direction:"https://www.sonolibro.com/audiolibros/edgar-allan-poe/un-cuento-de-las-montanas-escabrosas", category_id:2, bookind_id: 2)
bookind_id = Bookmarck.create(name:"Silencio blanco", direction:"https://www.sonolibro.com/audiolibros/jack-london/silencio-blanco", category_id:2, bookind_id: 2)
bookind_id = Bookmarck.create(name:"20 años después", direction:"https://www.sonolibro.com/audiolibros/aventuras", category_id:2, bookind_id: 2)
bookind_id = Bookmarck.create(name:"Las fieras de tarzan", direction:"https://www.sonolibro.com/audiolibros/edgar-rice-burroughs/las-fieras-de-tarzan", category_id:2, bookind_id: 2)

bookind_id = Bookmarck.create(name:"El aleteo de la mariposa", direction:"https://www.sonolibro.com/audiolibros/luis-a-santamaria/el-aleteo-de-la-mariposa", category_id:2, bookind_id: 3)
bookind_id = Bookmarck.create(name:"El paraiso de las damas", direction:"https://www.sonolibro.com/audiolibros/emile-zola/el-paraiso-de-las-damas", category_id:2, bookind_id: 3)
bookind_id = Bookmarck.create(name:"Orgullo y prejuicio, de Jane Austen", direction:"https://freeditorial.com/en/books/orgullo-y-prejuicio/readonline", category_id:2, bookind_id: 3)
bookind_id = Bookmarck.create(name:"Cien años de soledad", direction:"http://www.secst.cl/upfiles/documentos/19072016_1207am_578dc39115fe9.pdf", category_id:3, bookind_id: 3)
bookind_id = Bookmarck.create(name:"El Principito", direction:"http://www.agirregabiria.net/g/sylvainaitor/principito.pdf", category_id:3, bookind_id: 3)

bookind_id = Bookmarck.create(name:"Acrocomia crispa fruits lipid extract prevents LPS-induced acute lung injury in mice", direction:"https://www.blacpma.usach.cl/sites/blacpma/files/articulo_2_-_1495_-_16_-_26_0.pdf", category_id:4, bookind_id: 4)
bookind_id = Bookmarck.create(name:"Etnomedicina en Los Altos de Chiapas, México", direction:"https://www.blacpma.usach.cl/sites/blacpma/files/articulo_4_-_1503_-_42_-_57_0.pdf", category_id:4, bookind_id:5 )
bookind_id = Bookmarck.create(name:"Bambi", direction:"http://www.cuentosinfantilesadormir.com/bambi_ilustrado.pdf", category_id:5, bookind_id:5)
bookind_id = Bookmarck.create(name:"Pinocho", direction:"http://www.cuentosinfantilesadormir.com/pinocho_ilustrado.pdf", category_id:5, bookind_id:5)
bookind_id = Bookmarck.create(name:"La Cenicienta", direction:"http://www.cuentosinfantilesadormir.com/cenicienta_ilustrado.pdf", category_id:5, bookind_id:5)










