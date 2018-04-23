USE packt_school;

-- Step (1), fake emails:

INSERT INTO student (name, email)
VALUES
	('Monicah Mumbi', 'mumbi@packt.edu'),
  ('Brian Baraka', 'bbaraka@packt.edu'),
  ('Ben Barasa', 'bbarasa@packt.edu'),
  ('Betty Bahati', 'bbahati@packt.edu'),
  ('Mark Darasa', 'mdarasa@packt.edu'),
  ('Mercy Matili', 'mmatili@packt.edu');

-- Step (2), fake emails:

INSERT INTO teacher (name, email)
VALUES
	('Mercy Masika', 'mmasika@packt.edu'),
  ('Jeff Mabuto', 'jmabuto@packt.edu'),
  ('Rick Beat', 'rbeato@packt.edu'),
  ('Sam Munyaga', 'smunyaga@packt.edu'),
  ('Aaron Rimbui', 'rrimbui@packt.edu'),
  ('Scott Divine', 'sdivine@packt.edu'),
  ('Kirk Whalum', 'kwhalum@packt.edu'),
  ('Amani Baya', 'abaya@packt.edu');

-- Step (3)

INSERT INTO subject (name)
VALUES 
	('Vocals'),
  ('Acoustic Guitar'),
  ('Piano'),
  ('Bass Guitar'),
  ('Saxophone'),
  ('Drums');