-- Insertar categorías
INSERT INTO categories (name)
VALUES ('Analgesics');
INSERT INTO categories (name)
VALUES ('Antibiotics');
INSERT INTO categories (name)
VALUES ('Antihistamines');
INSERT INTO categories (name)
VALUES ('Antacids');
INSERT INTO categories (name)
VALUES ('Vitamins');

-- Insertar medicamentos
INSERT INTO medications (name, description, price, expiration_date, category_id)
VALUES ('Aspirin', 'Used to reduce pain, fever, or inflammation.', 5.99, '2025-12-31',
        (SELECT id FROM categories WHERE name = 'Analgesics')),
       ('Ibuprofen', 'Nonsteroidal anti-inflammatory drug used for reducing fever and treating pain.', 8.49,
        '2024-06-30', (SELECT id FROM categories WHERE name = 'Analgesics')),
       ('Paracetamol', 'Used to relieve pain and reduce fever.', 4.49, '2024-09-15',
        (SELECT id FROM categories WHERE name = 'Analgesics')),
       ('Naproxen', 'Nonsteroidal anti-inflammatory drug used for pain relief and reducing inflammation.', 7.99,
        '2025-01-10', (SELECT id FROM categories WHERE name = 'Analgesics')),
       ('Amoxicillin', 'Antibiotic used to treat bacterial infections.', 12.99, '2024-11-30',
        (SELECT id FROM categories WHERE name = 'Antibiotics')),
       ('Azithromycin', 'Antibiotic used to treat various bacterial infections.', 14.99, '2025-04-20',
        (SELECT id FROM categories WHERE name = 'Antibiotics')),
       ('Doxycycline', 'Antibiotic used to treat a variety of infections.', 16.49, '2025-08-31',
        (SELECT id FROM categories WHERE name = 'Antibiotics')),
       ('Clindamycin', 'Antibiotic used to treat serious infections.', 18.99, '2024-12-15',
        (SELECT id FROM categories WHERE name = 'Antibiotics')),
       ('Cetirizine', 'Antihistamine used to relieve allergy symptoms.', 9.99, '2025-03-31',
        (SELECT id FROM categories WHERE name = 'Antihistamines')),
       ('Loratadine', 'Antihistamine used to relieve allergy symptoms without drowsiness.', 11.49, '2025-07-15',
        (SELECT id FROM categories WHERE name = 'Antihistamines')),
       ('Fexofenadine', 'Antihistamine used for the treatment of allergic rhinitis.', 10.99, '2024-11-30',
        (SELECT id FROM categories WHERE name = 'Antihistamines')),
       ('Diphenhydramine', 'Antihistamine used to relieve allergy symptoms and as a sleep aid.', 8.49, '2025-02-28',
        (SELECT id FROM categories WHERE name = 'Antihistamines')),
       ('Tums', 'Antacid used to relieve heartburn, indigestion, and upset stomach.', 6.49, '2024-10-01',
        (SELECT id FROM categories WHERE name = 'Antacids')),
       ('Pepto-Bismol', 'Used to treat nausea, heartburn, indigestion, upset stomach, and diarrhea.', 7.99,
        '2024-12-31', (SELECT id FROM categories WHERE name = 'Antacids')),
       ('Rolaids', 'Antacid used to relieve heartburn and indigestion.', 5.99, '2025-06-30',
        (SELECT id FROM categories WHERE name = 'Antacids')),
       ('Maalox', 'Antacid used to treat acid indigestion and heartburn.', 6.99, '2024-08-31',
        (SELECT id FROM categories WHERE name = 'Antacids')),
       ('Vitamin C', 'Essential vitamin used to prevent scurvy and support immune function.', 4.99, '2025-05-15',
        (SELECT id FROM categories WHERE name = 'Vitamins')),
       ('Vitamin D', 'Essential vitamin for bone health and calcium absorption.', 6.49, '2024-11-01',
        (SELECT id FROM categories WHERE name = 'Vitamins')),
       ('Multivitamins', 'Supplement containing a combination of vitamins and minerals.', 8.99, '2025-01-31',
        (SELECT id FROM categories WHERE name = 'Vitamins')),
       ('Vitamin B12', 'Vitamin essential for red blood cell formation and neurological function.', 7.49, '2024-10-15',
        (SELECT id FROM categories WHERE name = 'Vitamins'));




