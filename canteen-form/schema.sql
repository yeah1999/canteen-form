-- Supabase 数据库建表SQL
-- 在 Supabase Dashboard > SQL Editor 里执行

CREATE TABLE meals (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name TEXT NOT NULL,
  date DATE NOT NULL,
  breakfast BOOLEAN DEFAULT FALSE,
  lunch BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 让前端可以公开访问
ALTER TABLE meals ENABLE ROW LEVEL SECURITY;

-- 允许所有人查询
CREATE POLICY "允许查询" ON meals
  FOR SELECT USING (true);

-- 允许所有人插入
CREATE POLICY "允许插入" ON meals
  FOR INSERT WITH CHECK (true);

-- 允许所有人修改
CREATE POLICY "允许修改" ON meals
  FOR UPDATE USING (true);
