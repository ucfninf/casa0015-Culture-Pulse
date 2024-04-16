import 'package:culture_pulse_app/model/every_scenic_entity.dart';

class AllScenic {
  /// 0 Museum
  /// 1 park
  /// 2 historical heritage site
  /// 4 viewpoint
  static List<EveryScenicEntity> scenicList = [
    EveryScenicEntity(
      id: 1,
      latitude: 51.40396652816209,
      longitude: -0.3377060262853709,
      introduce:
          "As marvelously spectacular as it is macabre, one of the best places to get a dose of British history is Hampton Court Palace. Located on the border between London and Surrey, this Tudor-style palace was first erected in 1515 by then-Cardinal Wolsey but what made it particularly famous is the connection to the conflicted figure, Henry VIII.“But the palace was an unhappy place for the king – his third wife, Jane Seymour, died in childbirth within its halls, and his fifth wife, Catherine Howard, was arrested for adultery and treason while at the palace.”Henry was particularly attracted to the Palace, bringing all six of his wives to the property and making it his home. Legend has it her ghost still haunts the corridors of Hampton Court… Because Henry often called the property his ‘pleasure palace’, it still maintains its reputation today as it plays host to a music festival and a flower show each year, as well as a rotating display of the country’s finest art.Nowadays the Palace offers much in the way of guided tours as well as magnificent gardens that are free between 9.00 – 10.00 am each day.",
      photo: ['1.0'],
      name: 'Hampton Court Palace',
      type: 2,
    ),
    EveryScenicEntity(
      id: 2,
      latitude: 51.525131485587714,
      longitude: -0.11899436530004483,
      introduce:
          "The United Kingdom is filled with so many historical and cultural sites. The adorable UNESCO site of Bath is no exception. This town was founded in the 7th century as a religious center. Later, the Roman Empire made it thrive and turned it into a “spa town.” As I am a history teacher, the history of these baths intrigued me and made me want to visit.The Romans believed the springs around the town had curative properties and therefore everyone wanted to take a bath in this magical water.",
      photo: ['1.1'],
      name: "Bath, Roman Baths Museum, ancient Roman Baths",
      type: 0,
    ),
    EveryScenicEntity(
      id: 3,
      latitude: 51.52440455133547,
      longitude: -0.15415882541250794,
      introduce:
          "Osborne House is found on the stunning Isle of Wight, a short ferry journey from Portsmouth or Lymington off the south coast of England.",
      photo: ['1.2'],
      name: "Osbourne House",
      type: 2,
    ),
    EveryScenicEntity(
      id: 4,
      latitude: 51.17917706294244,
      longitude: -1.826310229701948,
      introduce:
          "Stonehenge is one of the most famous monuments in England and all of Europe. Even today, scientists don’t have a complete understanding of this prehistoric site’s true purpose. This historic site dates back to the Neolithic age and is estimated to be at least 4500 years old. It has been listed as a UNESCO world heritage since 1986 and is located close to Salisbury in Southwest of England. The stone circle and massive megalithic stones are a masterpiece of ancient engineering and make us realize just how advanced this civilization must have been.",
      photo: ['1.3'],
      name: "Stonehenge",
      type: 2,
    ),
    EveryScenicEntity(
      id: 5,
      latitude: 51.06110733319163,
      longitude: -1.313200788309965,
      introduce:
          "England’s ancient capital and the former seat of King Alfred the Great, Winchester is one of the UK’s most historic cities. Head to this city and you will find a good mix of history and legend. Winchester is pedestrian-friendly and with the free maps available in the City Museum, visitors can easily explore the town on their own.",
      photo: ['1.4'],
      name: "Winchester",
      type: 0,
    ),
    EveryScenicEntity(
      id: 6,
      latitude: 50.66766439693984,
      longitude: -4.758412351039189,
      introduce:
          "If you want to explore history in the UK, one of the best places to visit is Tintagel Castle in Cornwall. Tintagel Castle is where the legend of King Arthur and the Knights of the Round Table is based – there’s even a cave with a carving of Merline the famous wizard.",
      photo: ['1.5'],
      name: "Tintagel Castle",
      type: 2,
    ),
    EveryScenicEntity(
      id: 7,
      latitude: 54.99027397500832,
      longitude: -2.6018366577391605,
      introduce:
          "The northernmost boundary of Britannia and the whole Roman Empire around 2000 years ago was a hilly, windy but picturesque stretch of northern England.The Romans didn’t have much luck securing Scotland and so in 122 AD, the Roman Emperor Hadrian used 15,000 men to build a 73-mile wall from one coast of England to the other. Forts, gates, and towers were built along the wall.",
      photo: ['1.6'],
      name: "Hadrians Wall",
      type: 2,
    ),
    EveryScenicEntity(
      id: 8,
      latitude: 51.4998763946319,
      longitude: -0.12470847970118826,
      introduce:
          "Gunpowder plots, devastating fires, two world wars and Brexit: the Palace of Westminster has seen it all. It’s a wonder that it hasn’t given up and imploded. It hasn’t, of course, and it gets top points from Unesco for containing an exceptional example of neo-Gothic architecture in the Houses of Parliament, while the Church of St Margaret and Westminster Abbey have huge historic importance. It’s also home to our pal Big Ben, which – yawn, excuse the bellsplaining – actually is the name of the bell, not the tower.",
      photo: ['1.7'],
      name: "The Palace of Westminster and Westminster Abbey",
      type: 0,
    ),
    EveryScenicEntity(
      id: 9,
      latitude: 51.50829649915155,
      longitude: -0.07586864613879288,
      introduce:
          "The Tower of London is well known as a tourist attraction, but maybe less well known as a Unesco World Heritage Site. Look beyond the crown of Queen Victoria and the prodigious codpiece of King Henry VIII, and you’ll find an outstanding example of Norman architecture and the most complete survival of a late eleventh-century fortress palace in Europe. Much of the work of Henry III and Edward I, whose additions made the Tower into a model example of a concentric medieval fortress in the thirteenth and early fourteenth centuries, can be found here.",
      photo: ['1.8'],
      name: "Tower of London",
      type: 2,
    ),
    EveryScenicEntity(
      id: 10,
      latitude: 51.481151942064244,
      longitude: -0.005188080933453518,
      introduce:
          "Props to architects Inigo Jones (1573-1652) and Sir Christopher Wren (1632-1723), who pretty much smashed it with the elegant symmetry of the Queen’s House and the Royal Observatory, respectively. The National Maritime Museum’s London gallery – a permanent exhibition exploring the importance of the capital's seafaring heritage and its impact on world trade – also helped to win over the fine folk of Unesco",
      photo: ['1.9'],
      name: "Martime Greenwich",
      type: 2,
    ),
    EveryScenicEntity(
      id: 11,
      latitude: 51.27814195753511,
      longitude: 1.0886206100207445,
      introduce:
          "Name a better trio than the UNESCO-protected buildings in Canterbury... we’ll wait. They’re made up of St Martin’s Church, the oldest parish church in continuous use; the atmospheric ruins of St Augustine’s Abbey; and the breathtaking Canterbury Cathedral, whose gothic towers and beautiful stained-glass windows have survived fire, the Restoration and over 1,000 years of daily use.",
      photo: ['2.0'],
      name:
          "Canterbury Cathedral, St Augustine’s Abbey, and St Martin’s Church",
      type: 2,
    ),
    EveryScenicEntity(
      id: 12,
      latitude: 51.841590801338675,
      longitude: -1.361140641667315,
      introduce:
          "Designed by Sir John Vanbrugh, the scale and grandeur of Blenheim Palace were fully intended as a testament to the power of the First Duke of Marlborough’s family. In the grounds today you can still take a stroll to the 134-feet-high Column of Victory, with a statue of the First Duke depicted as a Roman general on the top of it. ",
      photo: ['2.1'],
      name: "Blenheim Palace",
      type: 2,
    ),
    EveryScenicEntity(
      id: 13,
      latitude: 51.50786696494028,
      longitude: -0.09951044906600902,
      introduce:
          "A riverside icon on London’s South Bank dedicated to modern and contemporary art. It’s the younger, hipper sibling to Pimlico’s Tate Britain.To be inspired and challenged – even by the architecture. Tate Modern is based in what was Bankside Power Station. Its 2016 Switch House extension added gallery space and incredible 360-degree views of the London skyline. Step inside to discover works by the likes of Warhol, Matisse and Bourgeois, all part of the free permanent collection.",
      photo: ['2.2'],
      name: "Tate Modern",
      type: 1,
    ),
    EveryScenicEntity(
      id: 14,
      latitude: 51.50837582252326,
      longitude: -0.09727767193014855,
      introduce:
          "A reconstruction of William Shakespeare’s circular theatre, which was destroyed by a fire, sat a few hundred yards from its original site. It’s the closest you’ll ever get to experiencing the Bard’s plays as his Elizabethan audience did. To stand or not to stand, that is the question. In the era of Mr Shakespeare himself, many theatregoers would stay on their feet when watching a play. Known as ‘groundlings’, those who stood would get an ace and up-close view of the show. At the Globe, this tradition has endured and you can get a standing spot for as little as £5. Honestly, the action is so engrossing that by the time you realise your feet hurt, it’ll all be over.",
      photo: ['2.3'],
      name: "Shakespeare’s Globe",
      type: 2,
    ),
    EveryScenicEntity(
      id: 15,
      latitude: 51.50629172084256,
      longitude: -0.1163645120861047,
      introduce:
          "A riverside titan of arts and entertainment, the Southbank Centre is made up of multiple venues hosting some of London's most sought-after events.  Whether or not there's an event on, it's still great for a visit. Munch on vegan cake at the food market or pick up a rare first edition at the bookstalls. ",
      photo: ['2.4'],
      name: "Southbank Centre",
      type: 1,
    ),
    EveryScenicEntity(
      id: 16,
      latitude: 51.47906756651071,
      longitude: -0.29561657632740396,
      introduce:
          "Kew Gardens, situated in London, stands as a horticultural masterpiece, spanning 300 acres of diverse landscapes. Home to over 50,000 plant species, its iconic attractions include the Palm House, a Victorian glasshouse, and the treetop walkway offering panoramic views. Renowned for scientific research and conservation, Kew Gardens seamlessly blends history, education, and natural beauty, making it a unique destination for nature enthusiasts and curious minds alike.",
      photo: ['2.5'],
      name: "Royal Botanic Gardens，Kew",
      type: 1,
    ),
    EveryScenicEntity(
      id: 17,
      latitude: 51.77354340282669,
      longitude: -3.086983675213988,
      introduce:
          "Blaenavon Industrial Landscape, in and around Blaenavon, Torfaen, Wales, was inscribed a World Heritage Site by UNESCO in 2000. The Blaenavon Ironworks, now a museum, was a major centre of iron production using locally mined or quarried iron ore, coal and limestone",
      photo: ['2.6'],
      name: "Blaenavon Industrial Landscape",
      type: 4,
    ),
    EveryScenicEntity(
      id: 18,
      latitude: 53.175744694667664,
      longitude: -4.3029040197809705,
      introduce:
          "The castles of Beaumaris and Harlech (largely the work of the greatest military engineer of the time, James of St George) and the fortified complexes of Caernarfon and Conwy are located in the former principality of Gwynedd, in north Wales. These extremely well-preserved monuments are examples of the colonization and defence works carried out throughout the reign of Edward I (1272–1307) and the military architecture of the time.",
      photo: ['2.7'],
      name: "Castles and Town Walls of King Edward in Gwynedd",
      type: 2,
    ),
    EveryScenicEntity(
      id: 19,
      latitude: 53.02893483325382,
      longitude: -1.486087614077294,
      introduce:
          "The Derwent Valley in central England contains a series of 18th- and 19th- century cotton mills and an industrial landscape of high historical and technological interest. The modern factory owes its origins to the mills at Cromford, where Richard Arkwright's inventions were first put into industrial-scale production. The workers' housing associated with this and the other mills remains intact and illustrate the socio-economic development of the area.",
      photo: ['2.8'],
      name: "Derwent Valley Mills",
      type: 2,
    ),
    EveryScenicEntity(
      id: 20,
      latitude: 54.77559142843575,
      longitude: -1.5762527999978169,
      introduce:
          "Durham Cathedral was built in the late 11th and early 12th centuries to house the relics of St Cuthbert (evangelizer of Northumbria) and the Venerable Bede. It attests to the importance of the early Benedictine monastic community and is the largest and finest example of Norman architecture in England. The innovative audacity of its vaulting foreshadowed Gothic architecture. Behind the cathedral stands the castle, an ancient Norman fortress which was the residence of the prince-bishops of Durham.",
      photo: ['2.9', '2.10'],
      name: "Durham Castle and Cathedral",
      type: 2,
    ),
    EveryScenicEntity(
      id: 21,
      latitude: 55.19472823961891,
      longitude: -1.497060560711192,
      introduce:
          "The ‘Roman Limes’ represents the border line of the Roman Empire at its greatest extent in the 2nd century AD. It stretched over 5,000 km from the Atlantic coast of northern Britain, through Europe to the Black Sea, and from there to the Red Sea and across North Africa to the Atlantic coast. The remains of the Limes today consist of vestiges of built walls, ditches, forts, fortresses, watchtowers and civilian settlements. Certain elements of the line have been excavated, some reconstructed and a few destroyed. The two sections of the Limes in Germany cover a length of 550 km from the north-west of the country to the Danube in the south-east. The 118-km-long Hadrian’s Wall (UK) was built on the orders of the Emperor Hadrian c. AD 122 at the northernmost limits of the Roman province of Britannia. It is a striking example of the organization of a military zone and illustrates the defensive techniques and geopolitical strategies of ancient Rome. The Antonine Wall, a 60-km long fortification in Scotland was started by Emperor Antonius Pius in 142 AD as a defense against the “barbarians” of the north. It constitutes the northwestern-most portion of the Roman Limes.",
      photo: ['3.0'],
      name: "Frontiers of the Roman Empire",
      type: 2,
    ),
    EveryScenicEntity(
      id: 22,
      latitude: 36.117431323748114,
      longitude: -5.342091719835799,
      introduce:
          "The steep limestone cliffs on the eastern side of the Rock of Gibraltar contain four caves with archaeological and paleontological deposits that provide evidence of Neanderthal occupation over a span of more than 100,000 years. This exceptional testimony to the cultural traditions of the Neanderthals is seen notably in evidence of the hunting of birds and marine animals for food, the use of feathers for ornamentation and the presence of abstract rock engravings. Scientific research on these sites has already contributed substantially to debates about Neanderthal and human evolution. ",
      photo: ['3.1'],
      name: "Gorham’s Cave Complex",
      type: 2,
    ),
    EveryScenicEntity(
      id: 23,
      latitude: 58.98663881048465,
      longitude: -3.2084259607432295,
      introduce:
          "The group of Neolithic monuments on Orkney consists of a large chambered tomb (Maes Howe), two ceremonial stone circles (the Stones of Stenness and the Ring of Brodgar) and a settlement (Skara Brae), together with a number of unexcavated burial, ceremonial and settlement sites. The group constitutes a major prehistoric cultural landscape which gives a graphic depiction of life in this remote archipelago in the far north of Scotland some 5,000 years ago.",
      photo: ['3.2', '3.21'],
      name: "Heart of Neolithic Orkney",
      type: 0,
    ),
    EveryScenicEntity(
      id: 24,
      latitude: 32.57423113073502,
      longitude: -64.61593366909092,
      introduce:
          "The Town of St George, founded in 1612, is an outstanding example of the earliest English urban settlement in the New World. Its associated fortifications graphically illustrate the development of English military engineering from the 17th to the 20th century, being adapted to take account of the development of artillery over this period.",
      photo: ['3.3'],
      name: "Historic Town of St George and Related Fortifications, Bermuda",
      type: 2,
    ),
    EveryScenicEntity(
      id: 25,
      latitude: 52.72423751903885,
      longitude: -2.4539062891088386,
      introduce:
          " Ironbridge is known throughout the world as the symbol of the Industrial Revolution. It contains all the elements of progress that contributed to the rapid development of this industrial region in the 18th century, from the mines themselves to the railway lines. Nearby, the blast furnace of Coalbrookdale, built in 1708, is a reminder of the discovery of coke. The bridge at Ironbridge, the world's first bridge constructed of iron, had a considerable influence on developments in the fields of technology and architecture.",
      photo: ['3.4', '3.41'],
      name: "Ironbridge Gorge",
      type: 2,
    ),
    EveryScenicEntity(
      id: 26,
      latitude: 53.24285730104173,
      longitude: -2.3068210353404535,
      introduce:
          "Located in a rural area of northwest England, free from radio interference, Jodrell Bank is one of the world's leading radio astronomy observatories. At the beginning of its use, in 1945, the property housed research on cosmic rays detected by radar echoes. This observatory, which is still in operation, includes several radio telescopes and working buildings, including engineering sheds and the Control Building. Jodrell Bank has had substantial scientific impact in fields such as the study of meteors and the moon, the discovery of quasars, quantum optics, and the tracking of spacecraft. This exceptional technological ensemble illustrates the transition from traditional optical astronomy to radio astronomy (1940s to 1960s), which led to radical changes in the understanding of the universe.",
      photo: ['3.5'],
      name: "Jodrell Bank Observatory",
      type: 4,
    ),
    EveryScenicEntity(
      id: 27,
      latitude: 55.66417741056322,
      longitude: -3.782318359734961,
      introduce:
          "New Lanark is a small 18th- century village set in a sublime Scottish landscape where the philanthropist and Utopian idealist Robert Owen moulded a model industrial community in the early 19th century. The imposing cotton mill buildings, the spacious and well-designed workers' housing, and the dignified educational institute and school still testify to Owen's humanism.",
      photo: ['3.6'],
      name: "New Lanark",
      type: 4,
    ),
    EveryScenicEntity(
      id: 28,
      latitude: 55.94917942702892,
      longitude: -3.189940309823038,
      introduce:
          "  Edinburgh has been the Scottish capital since the 15th century. It has two distinct areas: the Old Town, dominated by a medieval fortress; and the neoclassical New Town, whose development from the 18th century onwards had a far-reaching influence on European urban planning. The harmonious juxtaposition of these two contrasting historic areas, each with many important buildings, is what gives the city its unique character.",
      photo: ['3.7'],
      name: "Old and New Towns of Edinburgh",
      type: 2,
    ),
    EveryScenicEntity(
      id: 29,
      latitude: 52.970743377181854,
      longitude: -3.087665395795931,
      introduce:
          "The Pontcysyllte Canal is a remarkable example of the construction of a human-engineered waterway in a difficult geographical environment, at the end of the 18th century and the start of the 19th century. It required extensive and boldly conceived civil engineering works. It was constructed using metal arches supported by tall, slender masonry piers. The Pontcysyllte Aqueduct and Canal are early and outstanding examples of the innovations brought about by the Industrial Revolution in Britain, where they made decisive development in transport capacities possible. They bear witness to very substantial international interchanges and influences in the fields of inland waterways, civil engineering, land-use planning, and the application of iron in structural design.",
      photo: ['3.8'],
      name: "Pontcysyllte Aqueduct and Canal",
      type: 4,
    ),
    EveryScenicEntity(
      id: 30,
      latitude: 53.88181594295165,
      longitude: -1.7801152010360215,
      introduce:
          "Saltaire, West Yorkshire, is a complete and well-preserved industrial village of the second half of the 19th century. Its textile mills, public buildings and workers' housing are built in a harmonious style of high architectural standards and the urban plan survives intact, giving a vivid impression of Victorian philanthropic paternalism.",
      photo: ['3.9'],
      name: "Saltaire",
      type: 2,
    ),
    EveryScenicEntity(
      id: 31,
      latitude: 54.110326345736226,
      longitude: -1.5817754727059323,
      introduce:
          "In the 18th century a designed landscape of exceptional beauty was created around the ruins of the Cistercian Fountains Abbey, in Yorkshire. The spectacular ruins of the 12th century abbey and water mill, the Jacobean mansion of Fountains Hall, the Victorian masterpiece St Mary’s Church and one of the most magnificent Georgian water gardens ever created, make this a landscape of outstanding merit.",
      photo: ['4.0', '4.01'],
      name: "Studley Royal Park including the Ruins of Fountains Abbey",
      type: 2,
    ),
    EveryScenicEntity(
      id: 32,
      latitude: 54.602385396888145,
      longitude: -2.7941882689217343,
      introduce:
          "The English Lake District is a self-contained mountainous area in North West England of some 2,292 square kilometres. Its narrow, glaciated valleys radiating from the central massif with their steep hillsides and slender lakes exhibit an extraordinary beauty and harmony. This is the result of the Lake District’s continuing distinctive agro-pastoral traditions based on local breeds of sheep including the Herdwick, on common fell-grazing and relatively independent farmers. These traditions have evolved under the influence of the physical constraints of its mountain setting. The stone-walled fields and rugged farm buildings in their spectacular natural backdrop, form an harmonious beauty that has attracted visitors from the 18th century onwards. ",
      photo: ['4.1'],
      name: "The English Lake District",
      type: 1,
    ),
    EveryScenicEntity(
      id: 33,
      latitude: 56.00150810107862,
      longitude: -3.388723799618559,
      introduce:
          "This railway bridge, crossing the Forth estuary in Scotland, had the world’s longest spans (541 m) when it opened in 1890. It remains one of the greatest cantilever trussed bridges and continues to carry passengers and freight. Its distinctive industrial aesthetic is the result of a forthright and unadorned display of its structural components. Innovative in style, materials and scale, the Forth Bridge marks an important milestone in bridge design and construction during the period when railways came to dominate long-distance land travel.",
      photo: ['4.2'],
      name: "The Forth Bridge",
      type: 4,
    ),
    EveryScenicEntity(
      id: 34,
      latitude: 51.380671793803614,
      longitude: -2.3616256189956566,
      introduce:
          "This transnational serial property comprises eleven spa towns, located in seven European countries: Baden bei Wien (Austria); Spa (Belgium); Františkovy Lázně; Karlovy Vary; Mariánské Lázně (Czechia); Vichy (France); Bad Ems; Baden-Baden; Bad Kissingen (Germany); Montecatini Terme (Italy); and City of Bath (United Kingdom). All of these towns developed around natural mineral water springs. They bear witness to the international European spa culture that developed from the early 18th century to the 1930s, leading to the emergence of grand international resorts that impacted urban typology around ensembles of spa buildings such as baths, kurhaus and kursaal (buildings and rooms dedicated to therapy), pump rooms, drinking halls, colonnades and galleries designed to harness the natural mineral water resources and to allow their practical use for bathing and drinking. Related facilities include gardens, assembly rooms, casinos, theatres, hotels and villas, as well as spa-specific support infrastructure. These ensembles are all integrated into an overall urban context that includes a carefully managed recreational and therapeutic environment in a picturesque landscape. Together, these sites embody the significant interchange of human values and developments in medicine, science and balneology.",
      photo: ['4.3', '4.4'],
      name: "The Great Spa Towns of Europe",
      type: 2,
    ),
    EveryScenicEntity(
      id: 35,
      latitude: 57.81281001311733,
      longitude: -8.565440232647694,
      introduce:
          "This volcanic archipelago, with its spectacular landscapes, is situated off the coast of the Hebrides and comprises the islands of Hirta, Dun, Soay and Boreray. It has some of the highest cliffs in Europe, which have large colonies of rare and endangered species of birds, especially puffins and gannets. The archipelago, uninhabited since 1930, bears the evidence of more than 2,000 years of human occupation in the extreme conditions prevalent in the Hebrides. Human vestiges include built structures and field systems, the cleits and the traditional Highland stone houses. They feature the vulnerable remains of a subsistence economy based on the products of birds, agriculture and sheep farming.",
      photo: ['4.5'],
      name: "St. Kilda",
      type: 2,
    ),
  ];
}
