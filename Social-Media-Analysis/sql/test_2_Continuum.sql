-- Creating Table
-- Insert Values
insert into track_rs(hospital_name, room_type, room_spec, availability, empty_, address, published_time_stamp) 
values 
	('RS Umum Daerah Pidie Jaya', 'Tempat Tidur Covid 19', 'ICU Tekanan Negatif tanpa Ventilator',
	4, 1, 'Jl. Banda - Aceh KM. 158, Meureudu', '2021-05-19 17:28:36'),
	('RS Umum Daerah Pidie Jaya', 'Tempat Tidur Covid 19', 'ICU Tekanan Negatif tanpa Ventilator',
	4, 3, 'Jl. Banda - Aceh KM. 158, Meureudu', '2021-05-19 15:28:36'),
	('RS Umum Daerah Pidie Jaya', 'Tempat Tidur Covid 19', 'ICU Tekanan Negatif tanpa Ventilator',
	4, 2, 'Jl. Banda - Aceh KM. 158, Meureudu', '2021-05-19 14:28:36'),
	('RS Umum Daerah Pidie Jaya', 'Tempat Tidur Covid 19', 'ICU Tekanan Negatif tanpa Ventilator',
	4, 4, 'Jl. Banda - Aceh KM. 158, Meureudu', '2021-05-19 13:28:36'),
	('RS Umum Daerah Sabang', 'Tempat Tidur Covid 19', 'Isolasi Tanpa Tekanan Negatif', 10, 1,
	'Jl. Teuku Umar Sabang', '2021-05-18 20:23:38'),
	('RS Umum Daerah Sabang', 'Tempat Tidur Covid 19', 'Isolasi Tanpa Tekanan Negatif', 10, 8,
	'Jl. Teuku Umar Sabang', '2021-05-18 17:23:38'),
	('RS Umum Daerah Sabang', 'Tempat Tidur Covid 19', 'Isolasi Tanpa Tekanan Negatif', 10, 6,
	'Jl. Teuku Umar Sabang', '2021-05-18 15:23:38'),
	('RS Umum Daerah Sabang', 'Tempat Tidur Covid 19', 'Isolasi Tanpa Tekanan Negatif', 10, 5,
	'Jl. Teuku Umar Sabang', '2021-05-18 10:23:38'),
	('RS Umum Daerah Sabang', 'Tempat Tidur Covid 19', 'Isolasi Tanpa Tekanan Negatif', 10, 4,
	'Jl. Teuku Umar Sabang', '2021-05-18 08:23:38'),
	('RS Umum Daerah Sabang', 'Tempat Tidur Covid 19', 'Isolasi Tanpa Tekanan Negatif', 10, 3,
	'Jl. Teuku Umar Sabang', '2021-05-18 07:23:38');

	
-- RS Umum Daerah Pidie Jaya
WITH Pidie AS(
	select * 
	from track_rs
	where hospital_name = 'RS Umum Daerah Pidie Jaya'
)
SELECT *
FROM Pidie
WHERE published_time_stamp in (select max(published_time_stamp) from Pidie);


-- RS Umum Daerah Subang
WITH Teuku AS(
	select * 
	from track_rs
	where hospital_name = 'RS Umum Daerah Sabang'
)
SELECT *
FROM Teuku
WHERE published_time_stamp in (select max(published_time_stamp) from Teuku);