USE praktikum_web_2401020006;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Bisnis Digital'),
    ('Akuntansi');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401000006', 'Zafira Khairunnisa',
     'zazu@gmail.com', 18, 1),
    ('2401000007', 'Juan Prattycha',
     'ajupi@gmail.com', 20, 2),
    ('2401000008', 'Rasika Kasih',
     'rasika@gmail.com', 19, 2),
    ('2401000009', 'Nawrah Nadhif',
     'nawroh@gmail.com', 19, 1);

UPDATE mahasiswa
SET email = 'azaza@gmail.com'
WHERE nim = '2401000006';

DELETE FROM mahasiswa
WHERE nim = '2401000008';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;