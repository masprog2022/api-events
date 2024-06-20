CREATE TABLE tb_address (
 id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
 city VARCHAR(100) NOT NULL,
 uf VARCHAR(100) NOT NULL,
 event_id UUID,
 FOREIGN KEY (event_id) REFERENCES tb_event(id) ON DELETE CASCADE);