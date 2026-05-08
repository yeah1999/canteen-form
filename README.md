# 食堂用餐需求统计 🍱

手机电脑都可以访问的明日用餐登记系统。

## 部署步骤（5分钟）

### 第一步：创建 Supabase 项目（免费）

1. 打开 https://supabase.com ，用 GitHub 登录
2. 点击 **New project**
3. 填项目名 `canteen`，设置一个密码，选择免费套餐
4. 等一两分钟，项目创建好后
5. 左侧菜单 → **SQL Editor** → 复制粘贴 `schema.sql` 里的 SQL → 运行
6. 左侧菜单 → **Project Settings** → **API**
   - 复制 `Project URL`（类似 `https://xxxx.supabase.co`）
   - 复制 `anon public key`

### 第二步：配置并上传到 GitHub

1. 打开 `index.html`，把下面的配置替换成你的：

```javascript
const SUPABASE_URL = "https://你的项目ID.supabase.co";
const SUPABASE_KEY = "你的anon public key";
```

2. 创建 GitHub 仓库，命名 `canteen-form`
3. 上传代码：

```bash
git add .
git commit -m "食堂统计系统"
git remote add origin https://github.com/你的用户名/canteen-form.git
git push -u origin main
```

### 第三步：开启 GitHub Pages

1. GitHub 仓库 → **Settings** → **Pages**
2. Source 选 **Deploy from a branch**
3. Branch 选 **main**，目录选 **/ (root)**
4. 等一两分钟，你会看到链接：`https://你的用户名.github.io/canteen-form`

### 完成 🎉

把这个链接发到单位微信群就可以了！

- **职工**打开链接 → 填名字 → 选早餐/午餐 → 提交
- **管理员**点底部"管理后台" → 查看汇总
- 数据自动保存在 Supabase 云数据库

## 功能说明

- ✅ 每天默认统计明天（今晚填明天需求）
- ✅ 姓名快速选择（历史名字自动记住）
- ✅ 提交后可修改
- ✅ 管理后台可查看任意日期
- ✅ 手机端完美适配
- ✅ HTTPS 安全访问
