CREATE TABLE tb_coupon (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  code VARCHAR(50) NOT NULL,
  discount INTEGER NOT NULL,
  valid TIMESTAMP NOT NULL,
  event_id UUID,
  FOREIGN KEY (event_id) REFERENCES tb_event(id) ON DELETE CASCADE);