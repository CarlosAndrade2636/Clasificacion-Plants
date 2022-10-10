import 'package:hive/hive.dart';

part 'disease_model.g.dart';

@HiveType(typeId: 0)
class Disease extends HiveObject {
  @HiveField(0)
  final String name;

  //@HiveField(1)
  //late String possibleCauses;

  //@HiveField(2)
  //late String possibleSolution;

  @HiveField(1)
  late String nombre_comun;

  @HiveField(2)
  late String nombre_cientifico;

  @HiveField(3)
  late String lugar_adaptacion;

  @HiveField(4)
  late String lugar_proviene;

  @HiveField(5)
  late String imagePath;

  @HiveField(6)
  late DateTime dateTime;

  Disease({required this.name, required this.imagePath}) {
    dateTime = DateTime.now();

    switch (name) {
      case "Calahuala":
        nombre_comun =
            "Calahuala";
        nombre_cientifico =
            "Polypodium calaguala";
        lugar_proviene =
            "Ecuador, Peru , Chile";
        lugar_adaptacion =
             "El término calaguala proviene del quechua con este mismo nombre se conoce a un extracto que se obtiene de ella,"
                 "que se ha usado históricamente con fines medicinales"
              "Combate enfermedades cutáneas como psoriasis.Se encuentra en Sudamérica.";
        break;
/** 
      case "Cardiaca":
        nombre_comun =
        "Cardiaca";
        nombre_cientifico =
        "Scutellaria ocymoides (Kunth) Epling";
        lugar_proviene =
        "Colombia, Peru";
        lugar_adaptacion =
        "Esta especie es aceptada, y su area de distribucion nativa es Colombia (Cundinamarca), W. Central Peru.";
        break;
*/
      case "Carne Humana":
        nombre_comun =
        "Jungia rugosa Less	";
        nombre_cientifico =
        "Rubus alceifolius Poir";
        lugar_proviene =
        "Ecuador, Bolivia, Peru";
        lugar_adaptacion =
        "Comúnmente conocido como matico de la puna o karamati, es un arbusto de hasta 2 metros de alto de la familia Asteraceae. Habita zonas andinas de Ecuador, Bolivia y Perú.";
        break;

        case "Borraja":
        nombre_comun =
        "Aborraja, Borraja Blanca, Burraja, Lengua de buey";
        nombre_cientifico =
        "Borago officinalis";
        lugar_proviene =
        "Mediterráneo occidental";
        lugar_adaptacion =
        "La borraja es una planta poco cultivada, aunque en determinadas zonas es muy apreciada. Se aprovechan sus hojas y tallos tanto crudos como cocinados. Las flores se utilizan como condimento. Posee diversas propiedades medicinales, empleándose con este fin las hojas y las flores";
        break;

      case "Chulco":
        nombre_comun =
        "Chulco";
        nombre_cientifico =
        "Oxalis pedunculata (Chodat & Wilczek) Lourteig";
        lugar_proviene =
        "Mexico";
        lugar_adaptacion =
        "El género se encuentra en gran parte de las zonas templadas y cálidas; la diversidad de especies es particularmente rica en las zonas tropicales de Brasil, México, Perú, Colombia y Centroamérica.";
        break;
/** 
      case "Cola de Caballo":
        nombre_comun =
        "Caballochupa, cola de caballo";
        nombre_cientifico =
        "Equisetum bogotense Kunth";
        lugar_proviene =
        "Costa Rica, Panamá, Colombia, Venezuela, Ecuador, Perú, Bolivia, Brasil, Paraguay, Uruguay, Chile y Argentina.";
        lugar_adaptacion =
        "La cola de caballo o limpiaplata (Equisetum bogotense) es una equisetácea perenne con tallos articulados. Enriquecidos con sílice, tallos rizomatosos. Este tallo es pardusco con escrecencias glabras y segmentos escamosos.";
        break;
*/
 /** 
      case "Infante":
        nombre_comun =
        "Infante";
        nombre_cientifico =
        "Desmodium molliculum (Kunth) DC.";
        lugar_proviene =
        "Norte, Centro y Sudamérica";
        lugar_adaptacion =
        "Es una hierba perenne que crece hasta los 45 centímetros de altura. El tallo es ligeramente ramificado, postrado sobre el suelo, anguloso, con pelillos algunos de ellos con la punta en forma de gancho. Las hojas son compuestas, con estipulas, generalmente curvadas hacia atrás, angostas, puntiagudas, con la base asimétrica y ligeramente acorazonada, con pubescencia. Las flores sobre pedicelos, reunidas en grupos que se distribuyen a lo largo de un eje, formando en conjunto un racimo que puede estar ramificado. ";
        break;
*/
/** 
      case "Izo":
        nombre_comun =
        "Izo";
        nombre_cientifico =
        "Dalea coerulea (L. f.) Schinz & Thell.	";
        lugar_proviene =
        "América del Sur.";
        lugar_adaptacion =
        "Arbusto perennifolio. Hojas alternas, estipuladas, pinnaticompuetas, folíolos glandular-punteados. Inflorescencia espiciforme, compacta, brácteas pubescentes y sésiles. Flores hermafroditas, zigomorfas, pentámeras. Cáliz con sépalos soldados, con 5 dientes desiguales y plumosos. Corola con alas y quillas mayores que el estandarte, pétalos unguiculados. Androceo monadelfo. Gineceo con 2 primordios seminales. Fruto legumbre, envuelta por el cáliz, membranácea, indehiscente, monoseminada.";
        break;
*/


      case "Moradilla":
        nombre_comun =
        "Moradilla";
        nombre_cientifico =
        "Alternanthera porrigens (Jacq.) Kuntze";
        lugar_proviene =
        "Sudamérica";
        lugar_adaptacion =
        "Varias especies son plantas acuáticas en sus hábitos, pero la mayoría son plantas que prenden por estolones, algunas veces usado como cubierta vegetal. Las hojas son simples y verticiladas. Las flores son pequeñas, blancas o amarillas.";
        break;

      case "Ortiga":
        nombre_comun =
        "Ortiga";
        nombre_cientifico =
        "Urtica urens";
        lugar_proviene =
        "Todo el mundo";
        lugar_adaptacion =
        "Norte de Eurasia y el norte de América";
        break;

      case "Pena Pena":
        nombre_comun =
        "Pena Pena	";
        nombre_cientifico =
        "Fuchsia loxensis Kunth	";
        lugar_proviene =
        "Sudamérica";
        lugar_adaptacion =
        "Fuchsia es un género de plantas de flor, de la familia Onagraceae, dentro del orden Myrtales. Mayormente son arbustos, con unas 100 a 110 especies de América y Oceanía. Se les conoce con el nombre popular de fucsias, aretillos, pendientes, zarcillos de la Reina o aljaba.";
        break;

      case "Romero":
        nombre_comun =
        "Romero";
        nombre_cientifico =
        "Rosmarinus officinalis";
        lugar_proviene =
        "Sudamerica, Europa";
        lugar_adaptacion =
        "Este arbusto, propio de zonas secas y áridas, es originario de la zona mediterránea, donde también se cultiva. De hecho, sus principales países productores son España, Marruecos y Túnez.";
        break;

      case "Sangoracha":
        nombre_comun =
        "Sangorocha, amaranto, Ataco";
        nombre_cientifico =
        "Amaranthus quitensis	";
        lugar_proviene =
        "Es endémica de Bolivia, Brasil, Argentina, Ecuador, Paraguay, Perú, Uruguay.";
        lugar_adaptacion =
        "Es usada por chamanes en Ecuador para tratar epilepsia."
        "También es muy conocida por ser el ingrediente principal en las aguas tradicionales de la región sierra de Ecuador; dando así la conocida agua de Horchata; cabe indicar que también se la mezcla con otras hierbas aromáticas como: manzanilla, flores de clavel, llantén, etc. para preparar la mencionada bebida.";
        break;
/** 
      case "Shipalpal":
        nombre_comun =
        "Shipalpal";
        nombre_cientifico =
        "Valeriana tomentosa Kunth";
        lugar_proviene =
        "Nativa de Europa y algunas partes de Asia.";
        lugar_adaptacion =
        "Valeriana officinalis, comúnmente llamada valeriana común, valeriana de las boticas o valeriana medicinal, es una herbácea perenne, perteneciente a la antigua familia Valerianaceae, reclasificada en la familia Caprifoliaceae. Se distribuye naturalmente por toda Europa y por las regiones de Asia de clima templado, y se encuentra naturalizada en muchas otras regiones del mundo.";
        break;
*/

/** 
      case "Shullo":
        nombre_comun =
        "Shullo, Minerva, cruz de Malta, amapola de campo, rosilla, árnica, cáncer lisa, clamería.";
        nombre_cientifico =
        "Polypodium calaguala";
        lugar_proviene =
        "Ecuador, Peru , Chile";
        lugar_adaptacion =
        "El término calaguala proviene del quechua con este mismo nombre se conoce a un extracto que se obtiene de ella,"
            "que se ha usado históricamente con fines medicinales"
            "Combate enfermedades cutáneas como psoriasis.Se encuentra en Sudamérica.";
        break;
*/
      case "Tigresillo":
        nombre_comun =
        "Tigresillo";
        nombre_cientifico =
        "Peperomia inaequalifolia";
        lugar_proviene =
        "Endémica de Colombia, Ecuador y Perú";
        lugar_adaptacion =
        "Se utiliza tradicionalmente también para la cicatrización de heridas externas, cortes internos post operaciones; combate la esterilidad, cólicos menstruales, afecciones del posparto, afecciones de los riñones y del hígado; finalmente, un masaje con su extracto fortalece el cabello";
        break;


      case "Ñachic":
        nombre_comun =
        "Ñachic, amor ciego, mishico, pante amarillo";
        nombre_cientifico =
        "Bidens andicola Kunth";
        lugar_proviene =
        "De Chihuahua y Nuevo León a Argentina y Chile";
        lugar_adaptacion =
        "Bidens es un género con alrededor de 200 especies de plantas de la familia Asteraceae. La especie Bidens laevis es muy apreciada por sus flores en el sudeste de los Estados Unidos. Bidens frondosa es considerada en Nueva Zelanda una planta invasora.";
        break;

      case "Violeta":
        nombre_comun =
        "Violeta común , Viola";
        nombre_cientifico =
        "Viola odorata";
        lugar_proviene =
        "nativa de Europa y de Asia";
        lugar_adaptacion =
        "Sudamerica";
        break;

      case "Toronjil":
        nombre_comun =
        "Melisa, Limoncillo, Menta Melisa, Hoja de limón o Toronjil";
        nombre_cientifico =
        "Melissa officinalis";
        lugar_proviene =
        "Nativa del sur de Europa y de la región mediterránea";
        lugar_adaptacion =
        "Se ha naturalizado en toda la Europa templada. Crece de forma silvestre en prados húmedos, claros de bosque, a la vera de los ríos o en setos y campos cultivados, sobre suelos ricos en materia orgánica.";
        break;

      case "Ruda":
        nombre_comun =
        " Ruda, Hierba piojera, Ruda pestosa";
        nombre_cientifico =
        "Ruda graveolens";
        lugar_proviene =
        "Nativa del sur de Europa";
        lugar_adaptacion =
        "Se emplea también en algunos lugares de Italia para elaborar una salsa de tomate especial con aceitunas y alcaparras (junto con mejorana, levístico y albahaca).";
        break;

        case "Oreja de Burro":
        nombre_comun =
        "Oreja de Conejo, Oreja de Burro";
        nombre_cientifico =
        "Stachys Byzantina";
        lugar_proviene =
        "Es una planta nativa de Eurasia (Turquía e Irán), China y Japón.";
        lugar_adaptacion =
        "Se cultiva en gran parte del mundo templado como una planta ornamental ";
        break;


      case "Manzanilla":
        nombre_comun =
        "manzanilla o camomila común o romana";
        nombre_cientifico =
        "Chamaemelum nobile";
        lugar_proviene =
        "Es originaria de Europa occidental (excepto Países Bajos) y del norte de Asia, aunque antiguamente crecía en abundancia en Grecia";
        lugar_adaptacion =
        "Fue introducida en Europa central, Italia, Bulgaria y Rusia y actualmente también se encuentra naturalizada en la mayor parte de los Estados Unidos, Ecuador, Colombia, Argentina, Perú y en los valles centrales de Chile";
        break;
/** 
        case "Malva":
        nombre_comun =
        "Ñachic, amor ciego, mishico, pante amarillo";
        nombre_cientifico =
        "Bidens andicola Kunth";
        lugar_proviene =
        "De Chihuahua y Nuevo León a Argentina y Chile";
        lugar_adaptacion =
        "Bidens es un género con alrededor de 200 especies de plantas de la familia Asteraceae. La especie Bidens laevis es muy apreciada por sus flores en el sudeste de los Estados Unidos. Bidens frondosa es considerada en Nueva Zelanda una planta invasora.";
        break;
*/

        case "Iresine":
        nombre_comun =
        "IRESINE COLECCIÓN DEL JARDÍN";
        nombre_cientifico =
        "Iresine herbstii ";
        lugar_proviene =
        "América tropical";
        lugar_adaptacion =
        "Ampliamente cultivada en todo el mundo";
        break;

      case "Hinojo":
        nombre_comun =
        "Hinojo";
        nombre_cientifico =
        "Foeniculum vulgare";
        lugar_proviene =
        "Nativa de la zona meridional de Europa, en especial la costa del mar Mediterráneo";
        lugar_adaptacion =
        "Esta planta está distribuida alrededor del mundo en lugares de clima templado, ya que se caracteriza por tratarse de una hierba perenne que antiguamente era usada con fines medicinales, aunque sus tallos y hojas también tienen usos dentro en la gastronomía.";
        break;

      case "Hierba Luisa":
        nombre_comun =
        "Hierba limón, Toronjil de caña, Limonaria, Limoncillo, Zacate el limón";
        nombre_cientifico =
        "Cymbopogon citratus";
        lugar_proviene =
        "America del Sur, America Central";
        lugar_adaptacion =
        "La limonaria requiere un clima cálido para su cultivo. Si la siembras en un lugar donde hay estaciones, debes tener presente que para que sobreviva debes guardarla en invierno al interior del hogar.";
        break;

      case "Cedron":
        nombre_comun =
        "Cedrón, Cidrón";
        nombre_cientifico =
        "Aloysia citrodora";
        lugar_proviene =
        "America del Sur";
        lugar_adaptacion =
        "Chile, Paraguay, Brasil, Uruguay, Argentina, Bolivia, Colombia, Perú, Venezuela y Ecuador";
        break;

      case "Begonia peltatifolia":
        nombre_comun =
        "Begonia peltatifolia";
        nombre_cientifico =
        "Begonia peltatifolia";
        lugar_proviene =
        "China";
        lugar_adaptacion =
        "China , Sudamerica";
        break;

      case "Fuchsia":
        nombre_comun =
        "Fucsias, Aretillos, Zarcillos ";
        nombre_cientifico =
        "Fuchsia crassistipula";
        lugar_proviene =
        "México, América Central, Sudamérica, Nueva Zelanda y otras islas del Océano Pacífico.";
        lugar_adaptacion =
        "Este arbusto, propio de zonas secas y áridas, es originario de la zona mediterránea, donde también se cultiva. De hecho, sus principales países productores son España, Marruecos y Túnez.";
        break;

      case "Lavanda":
        nombre_comun =
        "Alfazema, Alhucema, Espigol   ";
        nombre_cientifico =
        " Lavandula angustifolia";
        lugar_proviene =
        "Francia, España, Inglaterra, Antigua Union Sovietica";
        lugar_adaptacion =
        "Este arbusto, propio de zonas secas y áridas, es originario de la zona mediterránea, donde también se cultiva. De hecho, sus principales países productores son España, Marruecos y Túnez.";
        break;

      case "Llanten":
        nombre_comun =
        "Llantén";
        nombre_cientifico =
        "Plantago lanceolata";
        lugar_proviene =
        "Europa, Asia";
        lugar_adaptacion =
        " Norteamérica, Centroamérica, Sudamérica: Colombia, Venezuela, Bolivia, Chile, Uruguay, Peru, Ecuador";
        break;

         case "Limon":
        nombre_comun =
        "Limón";
        nombre_cientifico =
        "Citrus limon";
        lugar_proviene =
        "Asia, Malasia";
        lugar_adaptacion =
        "Sudamerica, Asia, Europa, America del Norte";
        break;

      default:
        nombre_comun = "N/A";
        nombre_cientifico = "N/A";
        lugar_adaptacion = "N/A";
        lugar_proviene = "N/A";
        break;
    }
  }
}
