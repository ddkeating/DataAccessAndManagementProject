use schoolAppDatabase;

Create table schoolAppDatabase . category (
	id int Auto_increment primary key,
    name Varchar(250) UNIQUE NOT NULL    
);

Drop table schoolAppDatabase.Article;
Create table schoolAppDatabase.Article (
	id int Auto_increment primary key,
    category_id int,
    type varchar(50),
    name varchar(50),
    born varchar(15),
    died varchar(15),
    nationality varchar(50),
    known_for varchar(100),
    notable_work text,
    about varchar(6000),
    year varchar(15),
    medium varchar(50),
    dimensions varchar(50),
    location varchar(50),
    designed_by varchar(50),
    developer varchar(50),
    Foreign Key (category_id) references category(id)
);

Create table schoolAppDatabase . user (
	id Int Auto_increment primary key,
    username varchar(100) UNIQUE NOT NULL,
    password varchar(100) NOT NULL,
    role enum('student', 'tutor', 'admin') NOT NULL
);


insert into schoolAppDatabase . category (name)
values
('Arts'),
('Mathematics'),
('Technology');


SHOW COLUMNS FROM schoolAppDatabase.Article LIKE 'born';

insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('1', 'Biography', 'Claude Monet', '1840', '1926', 'French', 'Painter', 'Water lilies',
    "Oscar-Claude Monet was a French painter, a founder of French Impressionist painting and the most consistent and prolific practitioner of the movement's philosophy of expressing one's perceptions before nature, especially as applied to plein air landscape painting. The term 'Impressionism' is derived from the title of his painting Impression, soleil levant (Impression, Sunrise), which was exhibited in 1874 in the first of the independent exhibitions mounted by Monet and his associates as an alternative to the Salon de Paris. Monet's ambition of documenting the French countryside led him to adopt a method of painting the same scene many times in order to capture the changing of light and the passing of the seasons. From 1883, Monet lived in Giverny, where he purchased a house and property and began a vast landscaping project which included lily ponds that would become the subjects of his best-known works. In 1899, he began painting the water lilies, first in vertical views with a Japanese bridge as a central feature and later in the series of large-scale paintings that was to occupy him continuously for the next 20 years of his life.",
    NULL, NULL, NULL, NULL, NULL, NULL);

insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('1', 'Biography', 'Leonardo da Vinci', '1452', '1519', 'Italian', 'Art and Science', 'Mona Lisa, The Last Supper',
    "Leonardo di ser Piero da Vinci, more commonly Leonardo da Vinci, was an Italian polymath of the Renaissance, whose areas of interest included invention, painting, sculpting, architecture, science, music, mathematics, engineering, literature, anatomy, geology, astronomy, botany, writing, history, and cartography. He has been variously called the father of palaeontology, ichnology, and architecture, and is widely considered one of the greatest painters of all time. Sometimes credited with the inventions of the parachute, helicopter and tank, he epitomised the Renaissance humanist ideal.",
    NULL, NULL, NULL, NULL, NULL, NULL);
    
insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('1', 'Painting', 'Mona Lisa', NULL, NULL, NULL, NULL, NULL,
    "The Mona Lisa is a half-length portrait painting by the Italian Renaissance artist Leonardo da Vinci that has been described as 'the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world'. The Mona Lisa is also one of the most valuable paintings in the world. It holds the Guinness World Record for the highest known insurance valuation in history at $100 million in 1962, which is worth nearly $800 million in 2017.",
    '1503-1506', 'Oil on poplar panel', '77cm*53cm', 'Musee du Louvre, Paris', NULL, NULL);
    
insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('2', 'Theorem', 'Pythagorean theorem', NULL, NULL, NULL, NULL, NULL,
    "In mathematics, the Pythagorean theorem, also known as Pythagoras' theorem, is a fundamental relation in Euclidean geometry among the three sides of a right triangle. It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. The theorem can be written as an equation relating the lengths of the sides a, b and c, often called the 'Pythagorean equation': {a^{2}+b^{2}=c^{2},} a^{2}+b^{2}=c^{2}, where c represents the length of the hypotenuse and a and b the lengths of the triangle's other two sides. Although it is often argued that knowledge of the theorem predates him, the theorem is named after the ancient Greek mathematician Pythagoras as it is he who, by tradition, is credited with its first proof, although no evidence of it exists.There is some evidence that Babylonian mathematicians understood the formula, although little of it indicates an application within a mathematical framework.Mesopotamian, Indian and Chinese mathematicians all discovered the theorem independently and, in some cases, provided proofs for special cases. The theorem has been given numerous proofs – possibly the most for any mathematical theorem. They are very diverse, including both geometric proofs and algebraic proofs, with some dating back thousands of years. The theorem can be generalized in various ways, including higher-dimensional spaces, to spaces that are not Euclidean, to objects that are not right triangles, and indeed, to objects that are not triangles at all, but n-dimensional solids. The Pythagorean theorem has attracted interest outside mathematics as a symbol of mathematical abstruseness, mystique, or intellectual power; popular references in literature, plays, musicals, songs, stamps and cartoons abound.",
    NULL, NULL, NULL, NULL, NULL, NULL);
    
    
insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('2', 'Biography', 'Euclid', '4th century BC', '3rd century BC', NULL, 'Euclidean geometry', NULL,
    "Euclid, sometimes given the name Euclid of Alexandria to distinguish him from Euclides of Megara, was a Greek mathematician, often referred to as the 'founder of geometry' or the 'father of geometry'. He was active in Alexandria during the reign of Ptolemy I (323–283 BC). His Elements is one of the most influential works in the history of mathematics, serving as the main textbook for teaching mathematics (especially geometry) from the time of its publication until the late 19th or early 20th century. In the Elements, Euclid deduced the theorems of what is now called Euclidean geometry from a small set of axioms. Euclid also wrote works on perspective, conic sections, spherical geometry, number theory, and rigor.",
    NULL, NULL, NULL, NULL, NULL, NULL);
    
insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('2', 'Alogorithm', 'Quicksort', NULL, NULL, NULL, NULL, NULL,
    "Quicksort (sometimes called partition-exchange sort) is an efficient sorting algorithm, serving as a systematic method for placing the elements of an array in order. Developed by Tony Hoare in 1959 and published in 1961, it is still a commonly used algorithm for sorting. Quicksort is a comparison sort, meaning that it can sort items of any type for which a 'less-than' relation (formally, a total order) is defined. In efficient implementations it is not a stable sort, meaning that the relative order of equal sort items is not preserved. Quicksort can operate in-place on an array, requiring small additional amounts of memory to perform the sorting. It is very similar to selection sort, except that it does not always choose worst-case partition.",
    NULL, NULL, NULL, NULL, NULL, NULL);
    
insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('3', 'Biography', 'Bill Gates', '1955', NULL, 'USA', 'Founder of the Microsoft Corporation', NULL,
    "William Henry Gates III is an American business magnate, investor, author, philanthropist, humanitarian, and principal founder of Microsoft Corporation. During his career at Microsoft, Gates held the positions of chairman, CEO and chief software architect, while also being the largest individual shareholder until May 2014. In 1975, Gates and Paul Allen launched Microsoft, which became the world's largest PC software company. Gates led the company as chief executive officer until stepping down in January 2000, but he remained as chairman and created the position of chief software architect for himself.",
    NULL, NULL, NULL, NULL, NULL, NULL);
    
    
insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('3', 'Biography', 'Steve Jobs', '1955', '2011', 'USA', 'Co-creator of the Macintosh, iPod, iPhone, iPad, and first Apple Stores', NULL,
    "Steven Paul Jobs was an American entrepreneur and business magnate. He was the chairman, chief executive officer (CEO), and a co-founder of Apple Inc., chairman and majority shareholder of Pixar, a member of The Walt Disney Company's board of directors following its acquisition of Pixar, and the founder, chairman, and CEO of NeXT. Jobs is widely recognized as a pioneer of the microcomputer revolution of the 1970s and 1980s, along with Apple co-founder Steve Wozniak.",
    NULL, NULL, NULL, NULL, 'James Gosling', 'Sun Microsystems');
    
    
insert into schoolAppDatabase . Article (category_id, type, name, born, died, nationality, known_for, notable_work, about, year, medium, dimensions, location, designed_by, developer)
values
('3', 'Programming Language', 'Java', NULL, NULL, NULL, NULL, NULL,
    "Java is a general-purpose computer-programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers 'write once, run anywhere', meaning that compiled Java code can run on all platforms that support Java without the need for recompilation. Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of computer architecture. As of 2016, Java is one of the most popular programming languages in use, particularly for client-server web applications, with a reported 9 million developers. Java was originally developed by James Gosling at Sun Microsystems (which has since been acquired by Oracle Corporation) and released in 1995 as a core component of Sun Microsystems' Java platform. The language derives much of its syntax from C and C++, but it has fewer low-level facilities than either of them.",
    NULL, NULL, NULL, NULL, NULL, NULL);