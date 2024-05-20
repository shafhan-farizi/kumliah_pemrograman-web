USE sql6705327;
CREATE TABLE sql6705327.kelurahan (
	id INT auto_increment NOT NULL,
	nama varchar(45) NOT NULL,
	CONSTRAINT kelurahan_pk PRIMARY KEY (id)
);

CREATE TABLE sql6705327.pasien (
	id INT auto_increment NOT NULL,
	kode varchar(10) NOT NULL,
	nama varchar(45) NOT NULL,
	tmp_lahir varchar(30) NULL,
	tgl_lahir DATE NOT NULL,
	gender CHAR NOT NULL,
	email varchar(50) NULL,
	alamat varchar(100) NOT NULL,
	kelurahan_id INT NULL,
	CONSTRAINT pasien_pk PRIMARY KEY (id)
);

ALTER TABLE sql6705327.pasien ADD CONSTRAINT pasien_kelurahan_FK FOREIGN KEY (kelurahan_id) REFERENCES 	.kelurahan(id) ON DELETE CASCADE;

CREATE TABLE sql6705327.unit_kerja (
	id INT auto_increment NOT NULL,
	nama varchar(45) NOT NULL UNIQUE,
	CONSTRAINT unit_kerja_pk PRIMARY KEY (id)
);

CREATE TABLE sql6705327.paramedik (
	id INT auto_increment NOT NULL,
	nama varchar(45) NOT NULL,
	gender CHAR NOT NULL,
	tmp_lahir varchar(30) NOT NULL,
	tgl_lahir DATE NOT NULL,
	kategori ENUM('Cardiologist', 'Dermatologist', 'Pediatrician', 'Neurologist', 'Oncologist', 'Orthopedic Surgeon', 'Psychiatrist', 'Gastroenterologist', 'Ophthalmologist', 'Endocrinologist') NOT NULL,
	telpon VARCHAR(20) NOT NULL,
	alamat varchar(100) NOT NULL,
	unit_kerja_id INT NULL,
	CONSTRAINT paramedik_pk PRIMARY KEY (id)
);

ALTER TABLE sql6705327.paramedik ADD CONSTRAINT paramedik_unit_kerja_FK FOREIGN KEY (unit_kerja_id) REFERENCES sql6705327.unit_kerja(id) ON DELETE CASCADE;

CREATE TABLE sql6705327.periksa (
	id INT auto_increment NOT NULL,
	tanggal DATE NOT NULL,
	berat DOUBLE NOT NULL,
	tinggi DOUBLE NOT NULL,
	tensi varchar(20) NOT NULL,
	keterangan varchar(100) NOT NULL,
	pasien_id INT NULL,
	dokter_id INT NULL,
	CONSTRAINT periksa_pk PRIMARY KEY (id)
);

ALTER TABLE sql6705327.periksa ADD CONSTRAINT periksa_pasien_FK FOREIGN KEY (pasien_id) REFERENCES sql6705327.pasien(id) ON DELETE CASCADE;
ALTER TABLE sql6705327.periksa ADD CONSTRAINT periksa_paramedik_FK FOREIGN KEY (dokter_id) REFERENCES sql6705327.paramedik(id) ON DELETE CASCADE;



alter table kelurahan AUTO_INCREMENT = 1;
alter table pasien AUTO_INCREMENT = 1;
alter table unit_kerja  AUTO_INCREMENT = 1;
alter table paramedik  AUTO_INCREMENT = 1;
alter table periksa AUTO_INCREMENT = 1;

INSERT INTO kelurahan (nama) values ('Cilandak Barat');
INSERT INTO kelurahan (nama) values ('Renon');
INSERT INTO kelurahan (nama) values ('Kedungdoro');
INSERT INTO kelurahan (nama) values ('Cikini');
INSERT INTO kelurahan (nama) values ('Babakan Ciamis');
INSERT INTO kelurahan (nama) values ('Baruga');
INSERT INTO kelurahan (nama) values ('Padang Bulan');
INSERT INTO kelurahan (nama) values ('Candisari');
INSERT INTO kelurahan (nama) values ('Pandeyan');
INSERT INTO kelurahan (nama) values ('Bukit Kecil');

insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('PHK', 'Oryx gazella', 'Balikpapan', '2002-02-01', 'L', 'fberrey0@bluehost.com', 'Gang Melati 12A', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BTE', 'Marmota flaviventris', 'Medan', '2004-05-30', 'L', 'pcowhig1@example.com', 'Komplek Taman Sari 2 No. 15', 8);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('TIU', 'Ursus americanus', 'Denpasar', '2003-11-01', 'P', 'chaley2@multiply.com', 'Gg. Anggrek 3 RT 05 RW 02', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('INX', 'Funambulus pennati', 'Makassar', '2001-08-30', 'L', 'nadan3@elegantthemes.com', 'Gg. Anggrek 3 RT 05 RW 02', 8);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('SCR', 'Choloepus hoffmani', 'Yogyakarta', '2004-12-20', 'P', 'aiacovides4@odnoklassniki.ru', 'Perumahan Bukit Indah 2 Blok D7', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BES', 'Dendrocitta vagabunda', 'Palembang', '2003-04-24', 'L', 'ashoebottom5@vimeo.com', 'Perumahan Bukit Indah 2 Blok D7', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('CWF', 'Cordylus giganteus', 'Medan', '2002-11-07', 'P', 'cmacartney6@go.com', 'Jalan Pahlawan 17B', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MOT', 'Stercorarius longicausus', 'Bandung', '2003-03-01', 'P', 'abaal7@nasa.gov', 'Gang Melati 12A', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('GDO', 'Dasypus novemcinctus', 'Makassar', '2001-06-25', 'L', 'ttewes8@geocities.jp', 'Komplek Taman Sari 2 No. 15', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('HAW', 'Uraeginthus angolensis', 'Jakarta', '2003-05-02', 'L', 'bjanuszewski9@123-reg.co.uk', 'Gang Melati 12A', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('NDE', 'Turtur chalcospilos', 'Palembang', '2004-03-12', 'L', 'dmoena@microsoft.com', 'Perumahan Bukit Indah 2 Blok D7', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('IXE', 'unavailable', 'Yogyakarta', '2001-02-22', 'P', 'plesekb@meetup.com', 'Jl. Merdeka No. 10', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('RUG', 'Sarcophilus harrisii', 'Balikpapan', '2003-11-12', 'L', 'bmcasterc@slate.com', 'Gg. Anggrek 3 RT 05 RW 02', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('VDR', 'Chordeiles minor', 'Surabaya', '2002-11-04', 'L', 'etenauntd@slideshare.net', 'Jalan Raya Cendana 8', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('NWI', 'Diomedea irrorata', 'Denpasar', '2001-09-09', 'L', 'rkensette@go.com', 'Jalan Pahlawan 17B', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('FTK', 'Plegadis ridgwayi', 'Medan', '2001-05-02', 'L', 'zhealyf@vinaora.com', 'Komplek Taman Sari 2 No. 15', 1);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('DZU', 'Francolinus coqui', 'Surabaya', '2001-05-31', 'L', 'dmaymandg@bing.com', 'Jalan Raya Cendana 8', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('SDS', 'Genetta genetta', 'Bandung', '2001-04-02', 'L', 'bcaddyh@cbsnews.com', 'Jalan Pahlawan 17B', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('INY', 'unavailable', 'Medan', '2002-09-15', 'P', 'bperssei@ezinearticles.com', 'Perumahan Graha Asri Blok F4', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BWH', 'Casmerodius albus', 'Semarang', '2001-12-30', 'P', 'aalbasinij@thetimes.co.uk', 'Jalan Pahlawan 17B', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('AYE', 'Theropithecus gelada', 'Jakarta', '2000-12-03', 'P', 'abilneyk@amazon.de', 'Gang Melati 12A', 8);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('OKO', 'Acrobates pygmaeus', 'Surabaya', '2000-12-15', 'L', 'gtheobaldl@homestead.com', 'Perumahan Graha Asri Blok F4', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('DNA', 'Kobus vardonii vardoni', 'Bandung', '2002-12-31', 'L', 'tregnardm@weibo.com', 'Gang Melati 12A', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('WRG', 'Agkistrodon piscivorus', 'Yogyakarta', '2003-02-21', 'P', 'jsawnwyn@gizmodo.com', 'Jalan Pahlawan 17B', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('XYE', 'unavailable', 'Makassar', '2003-06-05', 'L', 'mmartelloo@berkeley.edu', 'Gg. Anggrek 3 RT 05 RW 02', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MXG', 'Macropus rufogriseus', 'Semarang', '2004-02-02', 'P', 'msneakerp@yandex.ru', 'Gg. Anggrek 3 RT 05 RW 02', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BTG', 'Cervus unicolor', 'Denpasar', '2000-10-19', 'P', 'fbowderyq@newyorker.com', 'Jl. Merdeka No. 10', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('ZSW', 'Semnopithecus entellus', 'Jakarta', '2002-05-26', 'P', 'mmcauslanr@ameblo.jp', 'Jalan Raya Cendana 8', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('QLF', 'Ctenophorus ornatus', 'Palembang', '2001-06-30', 'P', 'bklampks@ocn.ne.jp', 'Perumahan Graha Asri Blok F4', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('HAD', 'Didelphis virginiana', 'Surabaya', '2001-04-30', 'P', 'wbadert@google.fr', 'Gg. Anggrek 3 RT 05 RW 02', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('DGT', 'Eurocephalus anguitimens', 'Denpasar', '2003-11-13', 'L', 'colpinu@alexa.com', 'Gg. Anggrek 3 RT 05 RW 02', 1);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('PWO', 'Dusicyon thous', 'Surabaya', '2003-04-23', 'L', 'fheinzelv@mlb.com', 'Perumahan Graha Asri Blok F4', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('TBY', 'Tetracerus quadricornis', 'Semarang', '2004-11-20', 'L', 'aperew@mashable.com', 'Gang Melati 12A', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('TML', 'Ciconia ciconia', 'Bandung', '2003-12-04', 'L', 'kpietruszewiczx@whitehouse.gov', 'Jl. Merdeka No. 10', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('NKP', 'Lamprotornis superbus', 'Balikpapan', '2000-12-15', 'P', 'bharsy@house.gov', 'Jalan Pahlawan 17B', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('GYE', 'Egretta thula', 'Jakarta', '2002-07-10', 'P', 'hketleyz@businesswire.com', 'Perumahan Citra Indah Blok C2', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('KTF', 'Ourebia ourebi', 'Palembang', '2002-05-30', 'L', 'hbossom10@dell.com', 'Gang Mawar 5A', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('DBD', 'Bos taurus', 'Yogyakarta', '2003-08-03', 'P', 'mcore11@umich.edu', 'Perumahan Graha Asri Blok F4', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('ISI', 'Paradoxurus hermaphroditus', 'Bandung', '2004-02-23', 'P', 'mduinbleton12@theatlantic.com', 'Jl. Merdeka No. 10', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('CHP', 'Ceryle rudis', 'Bandung', '2003-08-10', 'L', 'itomkys13@webeden.co.uk', 'Jalan Raya Cendana 8', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MDC', 'Dasypus septemcincus', 'Balikpapan', '2003-06-03', 'L', 'cmcvee14@addthis.com', 'Perumahan Citra Indah Blok C2', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('LSS', 'Callorhinus ursinus', 'Surabaya', '2000-10-17', 'L', 'lthulborn15@dot.gov', 'Komplek Taman Sari 2 No. 15', 8);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MLE', 'Panthera pardus', 'Semarang', '2002-11-11', 'P', 'kdykas16@symantec.com', 'Jalan Raya Cendana 8', 1);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('QOJ', 'Spermophilus tridecemlineatus', 'Palembang', '2004-09-10', 'L', 'ehowsan17@salon.com', 'Gg. Anggrek 3 RT 05 RW 02', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('NQU', 'Tiliqua scincoides', 'Medan', '2000-06-18', 'P', 'lprazor18@bandcamp.com', 'Gg. Anggrek 3 RT 05 RW 02', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MMZ', 'Spizaetus coronatus', 'Bandung', '2004-10-04', 'L', 'mrossoni19@shinystat.com', 'Perumahan Citra Indah Blok C2', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('TJM', 'Francolinus swainsonii', 'Palembang', '2002-11-06', 'P', 'hmichal1a@bluehost.com', 'Gang Mawar 5A', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('KHW', 'Merops nubicus', 'Makassar', '2002-08-19', 'P', 'kbassindale1b@cbsnews.com', 'Gg. Anggrek 3 RT 05 RW 02', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('WEH', 'Cathartes aura', 'Yogyakarta', '2004-08-17', 'L', 'apibworth1c@vk.com', 'Jalan Raya Cendana 8', 8);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('TAD', 'Epicrates cenchria maurus', 'Semarang', '2000-08-02', 'P', 'ohawkeridge1d@webs.com', 'Gang Mawar 5A', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BPX', 'Larus fuliginosus', 'Bandung', '2004-10-24', 'P', 'nstolberg1e@dion.ne.jp', 'Gang Melati 12A', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('CNZ', 'Speothos vanaticus', 'Makassar', '2004-05-03', 'L', 'fwoofendell1f@etsy.com', 'Jalan Pahlawan 17B', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('QCY', 'Smithopsis crassicaudata', 'Bandung', '2004-05-27', 'P', 'lbuten1g@networkadvertising.org', 'Gang Mawar 5A', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('ISK', 'Centrocercus urophasianus', 'Balikpapan', '2001-05-25', 'L', 'jgoodban1h@linkedin.com', 'Komplek Taman Sari 2 No. 15', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BCQ', 'Theropithecus gelada', 'Medan', '2002-01-03', 'L', 'ccolquhoun1i@home.pl', 'Gang Melati 12A', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('PEQ', 'Theropithecus gelada', 'Surabaya', '2000-02-04', 'P', 'cmcnamee1j@clickbank.net', 'Perumahan Bukit Indah 2 Blok D7', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('RDV', 'Manouria emys', 'Palembang', '2004-09-23', 'L', 'bwisniowski1k@si.edu', 'Gg. Anggrek 3 RT 05 RW 02', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('TPJ', 'Hymenolaimus malacorhynchus', 'Makassar', '2001-07-17', 'L', 'jdoogood1l@unblog.fr', 'Perumahan Bukit Indah 2 Blok D7', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MXL', 'Crotalus adamanteus', 'Semarang', '2004-11-19', 'P', 'trickards1m@independent.co.uk', 'Perumahan Graha Asri Blok F4', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('CAK', 'Sula dactylatra', 'Medan', '2001-09-12', 'L', 'lgammack1n@goo.gl', 'Perumahan Bukit Indah 2 Blok D7', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('KZD', 'Sciurus niger', 'Bandung', '2003-06-19', 'P', 'lcastellanos1o@friendfeed.com', 'Gg. Anggrek 3 RT 05 RW 02', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('NUR', 'Anser caerulescens', 'Balikpapan', '2000-10-15', 'P', 'fmaclean1p@squarespace.com', 'Jalan Raya Cendana 8', 8);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('SJZ', 'Suricata suricatta', 'Balikpapan', '2003-05-24', 'P', 'cloughnan1q@ibm.com', 'Perumahan Graha Asri Blok F4', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('EVN', 'Acridotheres tristis', 'Surabaya', '2002-06-28', 'P', 'blangwade1r@nasa.gov', 'Perumahan Graha Asri Blok F4', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('TRN', 'Coluber constrictor', 'Palembang', '2003-08-20', 'P', 'ecaslett1s@networksolutions.com', 'Perumahan Bukit Indah 2 Blok D7', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('DAD', 'Tamandua tetradactyla', 'Semarang', '2003-09-28', 'L', 'kkochlin1t@ycombinator.com', 'Perumahan Bukit Indah 2 Blok D7', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('UFA', 'Dendrocitta vagabunda', 'Semarang', '2004-06-24', 'P', 'farblaster1u@hc360.com', 'Perumahan Bukit Indah 2 Blok D7', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('AGL', 'Columba livia', 'Jakarta', '2000-02-23', 'L', 'dcurnokk1v@loc.gov', 'Jalan Raya Cendana 8', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MDO', 'Spizaetus coronatus', 'Balikpapan', '2000-02-08', 'P', 'hcovil1w@nasa.gov', 'Perumahan Bukit Indah 2 Blok D7', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('ODD', 'Tiliqua scincoides', 'Jakarta', '2000-08-13', 'P', 'mpinnion1x@cloudflare.com', 'Gang Mawar 5A', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BVI', 'Geospiza sp.', 'Palembang', '2004-03-10', 'L', 'dstonebanks1y@umn.edu', 'Jl. Merdeka No. 10', 1);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('JAP', 'Eubalaena australis', 'Denpasar', '2003-05-09', 'L', 'hmewes1z@imgur.com', 'Jl. Merdeka No. 10', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BTK', 'Terrapene carolina', 'Denpasar', '2000-04-16', 'L', 'ptudgay20@yahoo.co.jp', 'Perumahan Bukit Indah 2 Blok D7', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('IRI', 'Pelecanus conspicillatus', 'Surabaya', '2001-12-03', 'L', 'vlyman21@earthlink.net', 'Gg. Anggrek 3 RT 05 RW 02', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('SFH', 'Microcebus murinus', 'Makassar', '2004-07-30', 'L', 'jdeignan22@ameblo.jp', 'Perumahan Bukit Indah 2 Blok D7', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('CLL', 'Macropus rufogriseus', 'Yogyakarta', '2002-11-24', 'L', 'larchanbault23@123-reg.co.uk', 'Jl. Merdeka No. 10', 8);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('AII', 'Marmota caligata', 'Semarang', '2003-06-09', 'L', 'jvalti24@sitemeter.com', 'Jl. Merdeka No. 10', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('IBP', 'Bucephala clangula', 'Palembang', '2001-08-23', 'P', 'clyndon25@auda.org.au', 'Jalan Pahlawan 17B', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BIR', 'Dasyurus viverrinus', 'Semarang', '2002-10-15', 'P', 'tmacginlay26@tripod.com', 'Jl. Merdeka No. 10', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('KLU', 'Cynictis penicillata', 'Semarang', '2001-04-25', 'L', 'rtarzey27@nps.gov', 'Jl. Merdeka No. 10', 8);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('JWA', 'Varanus sp.', 'Surabaya', '2003-10-16', 'P', 'lskains28@sourceforge.net', 'Jalan Raya Cendana 8', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('JQE', 'Ateles paniscus', 'Balikpapan', '2003-06-02', 'P', 'lblazynski29@blog.com', 'Perumahan Graha Asri Blok F4', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('NAA', 'Irania gutteralis', 'Medan', '2001-05-22', 'P', 'dhusset2a@nifty.com', 'Gang Mawar 5A', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('ECI', 'Fratercula corniculata', 'Bandung', '2000-10-06', 'P', 'jtiddy2b@omniture.com', 'Komplek Taman Sari 2 No. 15', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('ULD', 'Libellula quadrimaculata', 'Palembang', '2003-08-13', 'P', 'bfripp2c@toplist.cz', 'Komplek Taman Sari 2 No. 15', 1);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BMV', 'Crotalus triseriatus', 'Jakarta', '2002-01-16', 'L', 'ldurston2d@unblog.fr', 'Gg. Anggrek 3 RT 05 RW 02', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('INI', 'Heloderma horridum', 'Yogyakarta', '2001-05-27', 'L', 'slief2e@sakura.ne.jp', 'Jalan Raya Cendana 8', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('OMA', 'Loxodonta africana', 'Surabaya', '2001-01-26', 'L', 'alindstedt2f@google.es', 'Jalan Pahlawan 17B', 4);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MJX', 'Nucifraga columbiana', 'Palembang', '2002-08-29', 'P', 'cnail2g@booking.com', 'Komplek Taman Sari 2 No. 15', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('FBK', 'Didelphis virginiana', 'Balikpapan', '2000-01-01', 'L', 'egourlie2h@berkeley.edu', 'Perumahan Citra Indah Blok C2', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('MJM', 'unavailable', 'Denpasar', '2001-08-01', 'L', 'ctrenholm2i@wikia.com', 'Gang Mawar 5A', 6);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('TDO', 'Neotis denhami', 'Balikpapan', '2003-10-06', 'P', 'obrunini2j@go.com', 'Gang Melati 12A', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('USO', 'Gymnorhina tibicen', 'Bandung', '2001-03-05', 'L', 'chazeltine2k@cyberchimps.com', 'Gang Mawar 5A', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('LCF', 'Cacatua tenuirostris', 'Surabaya', '2002-05-16', 'P', 'askerrett2l@tmall.com', 'Komplek Taman Sari 2 No. 15', 3);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('RAP', 'Phoeniconaias minor', 'Palembang', '2000-10-31', 'L', 'cbroxup2m@altervista.org', 'Jalan Pahlawan 17B', 10);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('DIR', 'Phasianus colchicus', 'Medan', '2001-04-11', 'L', 'psprason2n@seattletimes.com', 'Komplek Taman Sari 2 No. 15', 9);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('BEY', 'Toxostoma curvirostre', 'Palembang', '2004-10-03', 'P', 'wtorricina2o@jigsy.com', 'Perumahan Graha Asri Blok F4', 5);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('GLE', 'Ardea cinerea', 'Jakarta', '2004-04-19', 'L', 'mmaddox2p@example.com', 'Perumahan Citra Indah Blok C2', 2);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('YZV', 'Ploceus intermedius', 'Jakarta', '2003-12-19', 'L', 'wcarse2q@cdc.gov', 'Komplek Taman Sari 2 No. 15', 7);
insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat, kelurahan_id) values ('KDV', 'Dendrocygna viduata', 'Bandung', '2003-07-17', 'P', 'lgronou2r@illinois.edu', 'Perumahan Citra Indah Blok C2', 9);

insert into unit_kerja (nama) values ('Puri Medika Hospital');
insert into unit_kerja (nama) values ('Sunset Health Center');
insert into unit_kerja (nama) values ('Golden Gate Clinic');
insert into unit_kerja (nama) values ('Rainbow Medical Center');
insert into unit_kerja (nama) values ('Sunflower Hospital');
insert into unit_kerja (nama) values ('Oceanview Medical Center');
insert into unit_kerja (nama) values ('Mountainview Clinic');
insert into unit_kerja (nama) values ('Silverlake Health Center');
insert into unit_kerja (nama) values ('Evergreen Hospital');
insert into unit_kerja (nama) values ('Maple Leaf Clinic');
insert into unit_kerja (nama) values ('Starlight Medical Center');
insert into unit_kerja (nama) values ('Seaside Health Center');
insert into unit_kerja (nama) values ('Pinecrest Hospital');
insert into unit_kerja (nama) values ('Lakeside Clinic');
insert into unit_kerja (nama) values ('Meadowview Medical Center');
insert into unit_kerja (nama) values ('Sunrise Health Center');
insert into unit_kerja (nama) values ('Willowbrook Hospital');
insert into unit_kerja (nama) values ('Harborview Clinic');
insert into unit_kerja (nama) values ('Rosewood Medical Center');
insert into unit_kerja (nama) values ('Valley Health Center');
insert into unit_kerja (nama) values ('Cascade Hospital');
insert into unit_kerja (nama) values ('Skyline Clinic');
insert into unit_kerja (nama) values ('Bayside Medical Center');
insert into unit_kerja (nama) values ('Greenfield Hospital');

insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (1, 'Choloepus hoffmani', 'P', 'Denpasar', '2023-10-04', 'Cardiologist', '(815) 9968984', 'Banjar Utara Selatan Barat', 4);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (2, 'Uraeginthus angolensis', 'L', 'Semarang', '2023-05-18', 'Dermatologist', '(892) 1777337', 'Jl. Raya Ciamis Utara Selatan Timur No. 7999', 11);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (3, 'Felis silvestris lybica', 'P', 'Makassar', '2024-01-12', 'Neurologist', '(471) 6339500', 'Sumedang', 8);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (4, 'Delphinus delphis', 'P', 'Surabaya', '2023-05-15', 'Psychiatrist', '(962) 6285003', 'Tasik Barat Laut', 7);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (5, 'unavailable', 'L', 'Palembang', '2023-09-10', 'Psychiatrist', '(851) 5761303', 'Jl. Raya Tasik No. 2333', 23);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (6, 'Microcebus murinus', 'P', 'Yogyakarta', '2023-07-10', 'Psychiatrist', '(585) 5355726', 'Banjar Utara', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (7, 'Francolinus swainsonii', 'L', 'Medan', '2024-05-02', 'Endocrinologist', '(477) 9935160', 'Jl. Raya Ciamis Utara Selatan No. 5777', 3);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (8, 'Dusicyon thous', 'L', 'Surabaya', '2024-03-23', 'Oncologist', '(520) 5124108', 'Cianjur Timur', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (9, 'Spermophilus armatus', 'L', 'Yogyakarta', '2024-03-14', 'Oncologist', '(237) 2198167', 'Jl. Raya Indramayu Barat Timur Laut No. 8444', 16);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (10, 'Cabassous sp.', 'L', 'Padang', '2023-09-27', 'Cardiologist', '(438) 9914599', 'Jl. Pahlawan No. 789', 8);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (11, 'Geochelone elegans', 'L', 'Jakarta', '2024-04-23', 'Neurologist', '(101) 1791402', 'Garut', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (12, 'Actophilornis africanus', 'L', 'Padang', '2023-09-04', 'Pediatrician', '(345) 5865094', 'Makassar', 15);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (13, 'Tadorna tadorna', 'L', 'Padang', '2024-04-13', 'Neurologist', '(333) 8879325', 'Jl. Raya Banjar Utara No. 4444', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (14, 'Oxybelis sp.', 'L', 'Surabaya', '2023-11-21', 'Psychiatrist', '(382) 2339143', 'Kuningan Selatan Timur Barat', 11);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (15, 'Crotalus cerastes', 'L', 'Palembang', '2023-05-21', 'Dermatologist', '(861) 4855635', 'Subang', 9);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (16, 'Stercorarius longicausus', 'P', 'Yogyakarta', '2024-01-22', 'Oncologist', '(366) 9735082', 'Banjaran Barat', 14);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (17, 'Equus burchelli', 'L', 'Padang', '2024-04-23', 'Orthopedic Surgeon', '(997) 5253485', 'Tasik Selatan', 22);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (18, 'Corythornis cristata', 'P', 'Palembang', '2024-01-07', 'Psychiatrist', '(237) 8886981', 'Jl. Raya Kuningan No. 2000', 12);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (19, 'Bubo sp.', 'L', 'Makassar', '2024-02-12', 'Cardiologist', '(513) 6162583', 'Jl. Raya Pangandaran No. 2111', 22);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (20, 'Aonyx capensis', 'L', 'Makassar', '2024-02-23', 'Gastroenterologist', '(985) 5587848', 'Jl. Raya Indramayu No. 1888', 6);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (21, 'Crotaphytus collaris', 'P', 'Bandung', '2023-12-07', 'Ophthalmologist', '(391) 8385845', 'Sumedang', 2);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (22, 'Merops bullockoides', 'P', 'Padang', '2023-11-14', 'Dermatologist', '(613) 4350874', 'Pangandaran Timur Laut', 11);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (23, 'Recurvirostra avosetta', 'L', 'Padang', '2024-03-16', 'Gastroenterologist', '(685) 9647984', 'Jl. Raya Bogor No. 666', 14);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (24, 'Antilocapra americana', 'L', 'Makassar', '2023-05-17', 'Ophthalmologist', '(845) 2915393', 'Jl. Ahmad Yani No. 777', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (25, 'Lamprotornis chalybaeus', 'L', 'Medan', '2023-07-27', 'Dermatologist', '(781) 5940395', 'Kuningan Barat Timur', 9);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (26, 'Thylogale stigmatica', 'L', 'Jakarta', '2023-10-28', 'Orthopedic Surgeon', '(134) 4372498', 'Jl. Raya Sumedang No. 2666', 2);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (27, 'Plectopterus gambensis', 'P', 'Medan', '2024-02-25', 'Ophthalmologist', '(243) 5679397', 'Tasik Barat Laut Selatan', 23);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (28, 'Chionis alba', 'L', 'Padang', '2023-09-14', 'Oncologist', '(972) 4330939', 'Cianjur Barat', 22);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (29, 'Corvus brachyrhynchos', 'P', 'Yogyakarta', '2023-11-08', 'Orthopedic Surgeon', '(269) 9993355', 'Yogyakarta', 5);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (30, 'Chlamydosaurus kingii', 'P', 'Padang', '2024-03-26', 'Endocrinologist', '(261) 2355178', 'Jl. Raya Kuningan Barat Timur No. 6444', 14);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (31, 'Vulpes vulpes', 'L', 'Denpasar', '2023-11-27', 'Neurologist', '(213) 5083840', 'Jl. Raya Majalengka No. 1999', 1);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (32, 'Lamprotornis sp.', 'L', 'Medan', '2023-10-27', 'Ophthalmologist', '(532) 5556712', 'Jl. Merdeka No. 123', 15);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (33, 'Spermophilus armatus', 'P', 'Semarang', '2023-08-21', 'Cardiologist', '(592) 1700111', 'Jl. Raya Ciamis Timur Barat No. 6888', 11);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (34, 'Ursus americanus', 'L', 'Surabaya', '2024-05-09', 'Orthopedic Surgeon', '(865) 3064747', 'Majalengka Utara', 9);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (35, 'Lorythaixoides concolor', 'P', 'Denpasar', '2023-12-09', 'Orthopedic Surgeon', '(706) 1980983', 'Jl. Gajah Mada No. 222', 22);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (36, 'Alcelaphus buselaphus cokii', 'L', 'Semarang', '2024-01-24', 'Orthopedic Surgeon', '(834) 7353327', 'Semarang', 9);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (37, 'Gabianus pacificus', 'L', 'Bandung', '2023-11-25', 'Oncologist', '(350) 5959709', 'Depok', 7);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (38, 'Corallus hortulanus cooki', 'L', 'Palembang', '2024-03-11', 'Ophthalmologist', '(851) 2913071', 'Jl. Raya Bogor No. 666', 18);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (39, 'Milvago chimachima', 'L', 'Jakarta', '2023-09-08', 'Gastroenterologist', '(692) 4581818', 'Jl. Raya Pangandaran No. 2111', 23);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (40, 'Genetta genetta', 'P', 'Jakarta', '2023-10-20', 'Oncologist', '(951) 1340955', 'Tasikmalaya', 8);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (41, 'Dasyurus viverrinus', 'P', 'Padang', '2024-02-24', 'Gastroenterologist', '(155) 9474866', 'Jl. Raya Tasikmalaya No. 1555', 18);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (42, 'Bassariscus astutus', 'L', 'Denpasar', '2023-07-03', 'Cardiologist', '(123) 2356184', 'Jl. Raya Kuningan Selatan Timur Barat No. 7555', 11);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (43, 'Macaca fuscata', 'P', 'Medan', '2023-05-10', 'Orthopedic Surgeon', '(542) 1435071', 'Kuningan', 15);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (44, 'Dasypus septemcincus', 'P', 'Semarang', '2023-07-26', 'Orthopedic Surgeon', '(564) 3347254', 'Jl. Raya Indramayu Timur Laut No. 5111', 6);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (45, 'Larus dominicanus', 'P', 'Semarang', '2023-08-20', 'Ophthalmologist', '(189) 2494288', 'Serang', 15);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (46, 'Isoodon obesulus', 'P', 'Padang', '2023-10-26', 'Cardiologist', '(692) 5822358', 'Kuningan Selatan', 7);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (47, 'Aonyx capensis', 'P', 'Makassar', '2024-02-29', 'Psychiatrist', '(801) 3865138', 'Pangandaran Barat Laut Timur', 6);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (48, 'Rhabdomys pumilio', 'P', 'Padang', '2023-05-15', 'Oncologist', '(275) 3054583', 'Majalengka', 7);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (49, 'Odocoileus hemionus', 'P', 'Bandung', '2023-12-31', 'Endocrinologist', '(949) 9129998', 'Jl. Raya Kuningan Selatan No. 3111', 10);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (50, 'Pycnonotus nigricans', 'P', 'Padang', '2024-02-06', 'Cardiologist', '(925) 3234189', 'Purwakarta', 18);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (51, 'unavailable', 'P', 'Medan', '2024-04-18', 'Neurologist', '(811) 4894253', 'Majalengka Timur Barat', 12);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (52, 'Cynictis penicillata', 'P', 'Jakarta', '2023-05-11', 'Cardiologist', '(856) 1765853', 'Jl. Raya Tasik No. 2333', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (53, 'Mazama americana', 'P', 'Palembang', '2024-03-26', 'Cardiologist', '(671) 3448388', 'Ciamis', 19);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (54, 'Sciurus niger', 'P', 'Denpasar', '2023-08-03', 'Orthopedic Surgeon', '(627) 2802216', 'Jl. Raya Tasik Selatan Utara Timur No. 8999', 22);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (55, 'Castor fiber', 'P', 'Bandung', '2023-05-23', 'Cardiologist', '(749) 6904828', 'Jl. Raya Banjar No. 2222', 17);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (56, 'Tamiasciurus hudsonicus', 'P', 'Surabaya', '2023-06-04', 'Psychiatrist', '(861) 2521209', 'Jl. Raya Banjar No. 2222', 15);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (57, 'Lophoaetus occipitalis', 'P', 'Semarang', '2023-08-09', 'Endocrinologist', '(140) 1230043', 'Jl. Raya Majalengka Timur No. 4111', 22);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (58, 'Panthera leo', 'L', 'Medan', '2023-10-12', 'Ophthalmologist', '(511) 6485050', 'Jl. Raya Pangandaran Timur No. 3222', 12);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (59, 'Acridotheres tristis', 'L', 'Makassar', '2023-08-02', 'Psychiatrist', '(307) 6401515', 'Jl. Raya Cianjur Timur Selatan No. 6111', 18);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (60, 'Nycticorax nycticorax', 'L', 'Semarang', '2024-03-30', 'Dermatologist', '(349) 1135634', 'Banjaran Barat', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (61, 'Ardea golieth', 'L', 'Padang', '2024-02-14', 'Gastroenterologist', '(875) 2876262', 'Depok', 3);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (62, 'Vanessa indica', 'L', 'Yogyakarta', '2024-02-06', 'Orthopedic Surgeon', '(201) 2904912', 'Pangandaran Barat Laut', 10);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (63, 'Kobus defassa', 'L', 'Makassar', '2024-03-03', 'Orthopedic Surgeon', '(401) 8809894', 'Jl. Raya Indramayu Timur No. 2999', 21);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (64, 'Geochelone radiata', 'P', 'Semarang', '2024-01-22', 'Neurologist', '(991) 9752952', 'Tasik Selatan Utara Timur', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (65, 'Meleagris gallopavo', 'L', 'Medan', '2023-09-28', 'Endocrinologist', '(979) 9625795', 'Cianjur', 18);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (66, 'Macropus rufogriseus', 'P', 'Surabaya', '2023-11-12', 'Cardiologist', '(716) 5697809', 'Jl. Raya Cianjur Timur No. 3999', 24);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (67, 'Psophia viridis', 'P', 'Jakarta', '2024-03-30', 'Oncologist', '(754) 5577393', 'Sumedang Barat Timur', 15);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (68, 'Sarcorhamphus papa', 'L', 'Jakarta', '2023-07-21', 'Pediatrician', '(324) 1262681', 'Pangandaran Barat Laut', 2);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (69, 'Echimys chrysurus', 'P', 'Bandung', '2023-07-25', 'Gastroenterologist', '(630) 8512208', 'Banjaran Barat', 24);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (70, 'Junonia genoveua', 'L', 'Padang', '2023-12-05', 'Orthopedic Surgeon', '(937) 2806517', 'Jl. Raya Cianjur Barat No. 2888', 14);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (71, 'Butorides striatus', 'L', 'Palembang', '2024-03-10', 'Endocrinologist', '(490) 9189663', 'Pangandaran Timur Laut Barat', 4);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (72, 'Eurocephalus anguitimens', 'L', 'Makassar', '2024-01-07', 'Gastroenterologist', '(752) 8275666', 'Jl. Raya Kuningan Selatan Timur No. 5333', 19);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (73, 'Pelecanus occidentalis', 'L', 'Surabaya', '2024-02-15', 'Psychiatrist', '(968) 4686253', 'Banjaran Barat', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (74, 'Chloephaga melanoptera', 'L', 'Denpasar', '2023-09-14', 'Ophthalmologist', '(510) 3842377', 'Jl. Raya Majalengka Utara Barat Timur No. 7444', 17);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (75, 'Phacochoerus aethiopus', 'P', 'Jakarta', '2023-06-23', 'Gastroenterologist', '(704) 1978005', 'Garut Timur Barat', 14);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (76, 'Morelia spilotes variegata', 'P', 'Bandung', '2023-11-15', 'Cardiologist', '(713) 8582533', 'Jl. Raya Majalengka Utara Barat Timur No. 7444', 24);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (77, 'Pytilia melba', 'L', 'Medan', '2023-12-14', 'Gastroenterologist', '(480) 9914212', 'Tasik Barat Laut Selatan', 19);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (78, 'Haliaeetus leucoryphus', 'P', 'Surabaya', '2023-07-28', 'Oncologist', '(315) 9120458', 'Jl. Sudirman No. 333', 14);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (79, 'Tragelaphus strepsiceros', 'L', 'Medan', '2023-09-19', 'Orthopedic Surgeon', '(366) 7242972', 'Ciamis Timur Barat Laut', 16);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (80, 'Raphicerus campestris', 'P', 'Jakarta', '2024-04-20', 'Dermatologist', '(461) 4570536', 'Cianjur Barat', 18);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (81, 'Zalophus californicus', 'L', 'Palembang', '2023-08-31', 'Endocrinologist', '(559) 5272423', 'Bandung', 21);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (82, 'Falco mexicanus', 'P', 'Makassar', '2023-05-19', 'Endocrinologist', '(646) 6581075', 'Jl. Raya Ciamis Utara No. 3555', 14);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (83, 'Connochaetus taurinus', 'P', 'Jakarta', '2024-04-27', 'Dermatologist', '(616) 2674760', 'Jl. Raya Tasik Barat No. 3444', 19);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (84, 'Marmota caligata', 'L', 'Palembang', '2023-12-15', 'Gastroenterologist', '(155) 6803750', 'Jl. Raya Indramayu Barat Timur Laut No. 8444', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (85, 'Haematopus ater', 'L', 'Palembang', '2023-07-31', 'Pediatrician', '(896) 9845658', 'Jl. Raya Majalengka Utara No. 3000', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (86, 'Naja haje', 'P', 'Medan', '2023-08-14', 'Dermatologist', '(987) 9379391', 'Jl. Raya Kuningan No. 2000', 19);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (87, 'Ardea cinerea', 'P', 'Jakarta', '2023-10-09', 'Psychiatrist', '(995) 2909907', 'Jl. Raya Garut Selatan No. 2777', 12);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (88, 'Aegypius tracheliotus', 'P', 'Palembang', '2023-06-01', 'Gastroenterologist', '(463) 7257221', 'Indramayu Barat Timur', 15);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (89, 'Ardea golieth', 'L', 'Medan', '2023-12-28', 'Pediatrician', '(396) 6298989', 'Kuningan Selatan', 5);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (90, 'Vanellus armatus', 'P', 'Semarang', '2023-06-20', 'Pediatrician', '(139) 4056687', 'Tasik Selatan', 24);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (91, 'Eremophila alpestris', 'L', 'Semarang', '2023-07-14', 'Neurologist', '(896) 2004506', 'Banjar Utara Selatan Barat', 1);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (92, 'Stercorarius longicausus', 'P', 'Medan', '2023-11-13', 'Gastroenterologist', '(638) 8867160', 'Jl. Raya Banjar Utara Selatan Barat No. 8888', 12);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (93, 'Ateles paniscus', 'L', 'Palembang', '2023-06-15', 'Neurologist', '(892) 8582912', 'Jl. Raya Tasikmalaya No. 1555', 5);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (94, 'Acrantophis madagascariensis', 'P', 'Surabaya', '2023-08-15', 'Cardiologist', '(367) 1963939', 'Pangandaran Barat', 20);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (95, 'Ardea cinerea', 'P', 'Palembang', '2024-04-09', 'Oncologist', '(134) 3206704', 'Jl. Raya Kuningan Barat Timur No. 6444', 16);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (96, 'Macaca mulatta', 'L', 'Medan', '2023-10-20', 'Dermatologist', '(399) 7933278', 'Jl. Raya Cianjur Timur Selatan Utara No. 8333', 12);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (97, 'Mazama americana', 'L', 'Surabaya', '2023-07-22', 'Gastroenterologist', '(679) 3623043', 'Jl. Raya Kuningan Barat No. 4222', 18);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (98, 'Isoodon obesulus', 'L', 'Denpasar', '2023-08-21', 'Ophthalmologist', '(691) 4217111', 'Majalengka Timur', 9);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (99, 'Cygnus atratus', 'L', 'Palembang', '2023-11-22', 'Cardiologist', '(952) 3045680', 'Tasik Barat Laut Selatan', 1);
insert into paramedik (id, nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (100, 'Ourebia ourebi', 'P', 'Denpasar', '2024-03-22', 'Dermatologist', '(644) 1263400', 'Jl. Raya Sukabumi No. 1666', 20);

insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-05-31', 89.5, 179.5, '112/72 mmHg', 'Sekarad', 9, 49);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-10-03', 75.3, 161.7, '115/75 mmHg', 'Sekarad', 41, 11);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-07-19', 61.3, 155.8, '133/88 mmHg', 'Sekarad', 91, 89);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-10-24', 66.3, 178.3, '118/78 mmHg', 'Sakit Parah', 69, 57);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-08-13', 56.7, 166.1, '122/79 mmHg', 'Sakit Parah', 22, 72);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-12-08', 79.4, 158.9, '138/89 mmHg', 'Sakit Parah', 99, 11);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-02-23', 87.4, 157.9, '115/75 mmHg', 'Sakit Parah', 10, 92);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-10-21', 76.4, 158.3, '110/70 mmHg', 'Sekarad', 12, 83);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-06-01', 67, 163.2, '108/68 mmHg', 'Mo Meninggal', 28, 2);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-02-03', 65.5, 176.3, '133/88 mmHg', 'Tunggu Antrean Kematian', 10, 86);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-12-03', 54.5, 180.6, '125/82 mmHg', 'Sakit Parah', 76, 3);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-03-29', 84.3, 158.3, '132/87 mmHg', 'Tunggu Antrean Kematian', 83, 99);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-01-29', 64.9, 176.3, '155/105 mmHg', 'Mo Meninggal', 9, 26);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-08-31', 52.1, 179.5, '145/95 mmHg', 'Sakit Parah', 30, 74);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-04-15', 49.3, 163.6, '108/68 mmHg', 'Mo Meninggal', 8, 74);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-04-15', 57.1, 175.1, '128/83 mmHg', 'Tunggu Antrean Kematian', 63, 67);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-06-27', 70.2, 180.1, '110/70 mmHg', 'Sekarad', 34, 8);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-01-09', 53.7, 164.2, '113/73 mmHg', 'Mo Meninggal', 46, 52);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-06-25', 89.5, 163.2, '150/100 mmHg', 'Mo Meninggal', 69, 55);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-03-15', 73.1, 158.9, '127/82 mmHg', 'Tunggu Antrean Kematian', 16, 82);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-06-16', 61.3, 164.7, '122/79 mmHg', 'Sakit Parah', 69, 43);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-04-28', 69.6, 178.3, '117/77 mmHg', 'Sekarad', 30, 12);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-06-26', 79.4, 171.5, '128/83 mmHg', 'Tunggu Antrean Kematian', 81, 23);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-03-13', 60.6, 181.2, '105/65 mmHg', 'Tunggu Antrean Kematian', 67, 89);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-08-14', 85.6, 175.1, '130/85 mmHg', 'Sakit Parah', 26, 57);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-12-15', 84.3, 179.5, '142/92 mmHg', 'Sekarad', 53, 17);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-04-23', 69.6, 179.5, '127/82 mmHg', 'Sakit Parah', 26, 1);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-04-11', 72.7, 175.7, '117/77 mmHg', 'Mo Meninggal', 53, 16);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-03-19', 86.9, 162, '135/88 mmHg', 'Sakit Parah', 54, 12);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-10-03', 68.9, 165.5, '132/87 mmHg', 'Mo Meninggal', 40, 100);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-11-20', 46.4, 160.5, '127/82 mmHg', 'Tunggu Antrean Kematian', 8, 17);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-05-18', 62.6, 175.7, '132/87 mmHg', 'Sekarad', 38, 43);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-02-20', 73.1, 167.8, '117/77 mmHg', 'Mo Meninggal', 89, 83);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-11-02', 65.5, 166.9, '117/77 mmHg', 'Sekarad', 36, 89);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-01-19', 46.4, 162, '142/92 mmHg', 'Sakit Parah', 14, 91);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-03-18', 72.7, 168.9, '135/88 mmHg', 'Mo Meninggal', 99, 81);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-02-16', 60.6, 166.1, '140/90 mmHg', 'Sakit Parah', 62, 8);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-04-02', 80.1, 178.3, '132/87 mmHg', 'Tunggu Antrean Kematian', 23, 48);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-06-10', 62.6, 158.9, '117/77 mmHg', 'Sakit Parah', 11, 2);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-02-26', 64.9, 179.5, '142/92 mmHg', 'Tunggu Antrean Kematian', 33, 85);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-05-02', 67, 161.7, '105/65 mmHg', 'Sekarad', 74, 98);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-03-25', 77.6, 174.7, '113/73 mmHg', 'Sekarad', 87, 65);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-04-05', 55.8, 180.6, '118/78 mmHg', 'Sakit Parah', 29, 72);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-11-22', 63.8, 155.8, '155/105 mmHg', 'Sakit Parah', 85, 59);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-09-19', 68.9, 159.6, '120/78 mmHg', 'Sekarad', 81, 61);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-11-14', 70.2, 169.4, '117/77 mmHg', 'Sekarad', 62, 11);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-04-03', 83.7, 169.7, '138/89 mmHg', 'Sekarad', 20, 67);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-11-13', 55.8, 165.5, '150/100 mmHg', 'Mo Meninggal', 9, 82);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-05-07', 57.1, 161.4, '132/87 mmHg', 'Mo Meninggal', 10, 80);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-09-01', 61.3, 161.7, '118/78 mmHg', 'Sakit Parah', 30, 89);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-08-09', 49.3, 167.3, '155/105 mmHg', 'Tunggu Antrean Kematian', 56, 58);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-07-06', 66.3, 156.7, '115/75 mmHg', 'Sekarad', 67, 16);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-06-05', 88.2, 160, '138/89 mmHg', 'Sekarad', 17, 42);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-09-02', 54.5, 162.4, '138/89 mmHg', 'Sakit Parah', 26, 67);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-02-12', 47.1, 165.8, '118/78 mmHg', 'Tunggu Antrean Kematian', 58, 45);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-10-11', 52.1, 162, '120/78 mmHg', 'Tunggu Antrean Kematian', 70, 47);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-03-27', 78.8, 177.4, '145/95 mmHg', 'Mo Meninggal', 3, 36);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-05-17', 62.6, 173.3, '110/70 mmHg', 'Tunggu Antrean Kematian', 23, 63);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-08-30', 79.4, 167.8, '133/88 mmHg', 'Mo Meninggal', 94, 22);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-06-18', 59.2, 162, '133/88 mmHg', 'Sakit Parah', 11, 82);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-11-14', 66.3, 163.6, '113/73 mmHg', 'Tunggu Antrean Kematian', 51, 10);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-08-12', 56.7, 162, '128/83 mmHg', 'Mo Meninggal', 41, 94);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-01-28', 58.4, 180.6, '138/89 mmHg', 'Sekarad', 7, 40);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-05-11', 73.1, 162, '122/79 mmHg', 'Mo Meninggal', 35, 96);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-01-29', 52.1, 173.3, '128/83 mmHg', 'Tunggu Antrean Kematian', 24, 23);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-01-24', 71.5, 179, '105/65 mmHg', 'Mo Meninggal', 46, 29);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-01-15', 65.5, 176.3, '117/77 mmHg', 'Sekarad', 27, 44);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-06-02', 78.8, 180.1, '115/75 mmHg', 'Sakit Parah', 60, 21);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-11-19', 60.6, 165.5, '155/105 mmHg', 'Sakit Parah', 78, 15);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-08-29', 66.3, 175.7, '113/73 mmHg', 'Sakit Parah', 58, 99);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-04-06', 60.6, 175.1, '105/65 mmHg', 'Sekarad', 27, 39);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-10-31', 61.3, 167.3, '150/100 mmHg', 'Sekarad', 53, 70);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-03-22', 82.5, 161.4, '120/78 mmHg', 'Mo Meninggal', 43, 91);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-10-24', 84.3, 165.5, '120/78 mmHg', 'Tunggu Antrean Kematian', 97, 40);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-08-10', 56.7, 167.3, '117/77 mmHg', 'Sakit Parah', 60, 61);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2019-03-31', 56.7, 161.4, '132/87 mmHg', 'Tunggu Antrean Kematian', 60, 44);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-05-16', 88.2, 167.8, '155/105 mmHg', 'Sekarad', 47, 73);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-09-26', 66.3, 155.8, '120/78 mmHg', 'Sakit Parah', 40, 11);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2022-03-29', 77.6, 173.3, '145/95 mmHg', 'Sakit Parah', 21, 52);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-08-01', 74, 167.8, '122/79 mmHg', 'Tunggu Antrean Kematian', 43, 8);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2020-04-01', 65.5, 161.4, '135/88 mmHg', 'Sekarad', 9, 27);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-05-24', 56.7, 165.5, '118/78 mmHg', 'Tunggu Antrean Kematian', 79, 6);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-10-27', 72.7, 170.2, '150/100 mmHg', 'Sakit Parah', 96, 45);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-09-15', 73.1, 155.2, '150/100 mmHg', 'Tunggu Antrean Kematian', 75, 85);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-06-15', 75.3, 158.9, '105/65 mmHg', 'Mo Meninggal', 11, 40);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-01-23', 54.5, 178.3, '145/95 mmHg', 'Sakit Parah', 100, 38);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-08-22', 75.3, 168.9, '127/82 mmHg', 'Mo Meninggal', 3, 65);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-05-02', 79.4, 174.7, '118/78 mmHg', 'Mo Meninggal', 7, 28);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-07-08', 47.1, 157.9, '115/75 mmHg', 'Mo Meninggal', 27, 33);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-07-24', 71.5, 171.5, '117/77 mmHg', 'Sakit Parah', 55, 22);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-03-01', 72.7, 164.2, '120/80 mmHg', 'Sakit Parah', 46, 34);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-10-19', 76.4, 159.6, '115/75 mmHg', 'Sakit Parah', 38, 48);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-09-19', 52.1, 159.6, '155/105 mmHg', 'Mo Meninggal', 5, 29);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2018-11-02', 71.5, 156.7, '145/95 mmHg', 'Sakit Parah', 42, 28);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-08-16', 80.1, 164.7, '108/68 mmHg', 'Mo Meninggal', 66, 31);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2015-11-02', 61.3, 178.8, '145/95 mmHg', 'Mo Meninggal', 69, 88);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2021-09-29', 84.3, 158.3, '132/87 mmHg', 'Sakit Parah', 50, 86);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2016-01-15', 69.6, 178.8, '150/100 mmHg', 'Tunggu Antrean Kematian', 44, 60);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2023-05-02', 79.4, 182, '122/79 mmHg', 'Mo Meninggal', 97, 22);
insert into periksa (tanggal, berat, tinggi, tensi, keterangan, pasien_id, dokter_id) values ('2017-11-16', 83.7, 155.2, '115/75 mmHg', 'Mo Meninggal', 84, 12);
