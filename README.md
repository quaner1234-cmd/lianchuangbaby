# Custom Baby Sleeping Bag — Astro Website

B2B SEO website for Taian Lianchuang Textile Co., Ltd.
Specializing in custom baby sleeping bag OEM/ODM manufacturing.

---

## 项目结构 Project Structure

```
src/
├── components/
│   ├── Nav.astro          # 导航栏（含移动端汉堡菜单）
│   └── Footer.astro       # 页脚
├── layouts/
│   └── Base.astro         # 基础HTML模板（SEO meta tags）
├── pages/
│   ├── index.astro        # 首页（主要落地页）
│   ├── products/
│   │   └── [tog].astro    # 4个产品页（TOG 0.5/1.0/2.5/3.5）
│   └── blog/
│       ├── index.astro    # 博客列表页
│       └── what-is-tog-rating.astro  # 第一篇SEO文章
├── styles/
│   └── global.css         # 全局样式
public/
├── favicon.svg
└── robots.txt
```

---

## 部署到 Cloudflare Pages（推荐，免费）

### 第一步：安装依赖
```bash
npm install
```

### 第二步：本地预览
```bash
npm run dev
# 访问 http://localhost:4321
```

### 第三步：推送到 GitHub
```bash
git init
git add .
git commit -m "initial commit"
git remote add origin https://github.com/你的账号/custombabysleepingbag.git
git push -u origin main
```

### 第四步：Cloudflare Pages 连接
1. 登录 cloudflare.com → Pages → Create a project
2. Connect to Git → 选择你的 GitHub 仓库
3. 构建设置：
   - Framework preset: **Astro**
   - Build command: `npm run build`
   - Build output directory: `dist`
4. 点击 Save and Deploy
5. 绑定你的自定义域名（如 lianchuangbaby.com）

---

## 联系表单设置（Formspree）

1. 注册 formspree.io（免费50条/月）
2. 创建新表单，获取 Form ID
3. 打开 `src/pages/index.astro`
4. 找到这行并替换 YOUR_FORM_ID：
   ```html
   action="https://formspree.io/f/YOUR_FORM_ID"
   ```

---

## SEO 关键词布局

| 页面 | 目标关键词 |
|------|------|
| 首页 | custom baby sleeping bag manufacturer, OEM baby sleeping bag China |
| TOG 0.5 | TOG 0.5 baby sleeping bag manufacturer, summer baby sleeping bag OEM |
| TOG 1.0 | TOG 1.0 baby sleeping bag manufacturer, all season sleep bag OEM |
| TOG 2.5 | TOG 2.5 baby sleeping bag manufacturer, winter baby sleeping bag OEM |
| TOG 3.5 | TOG 3.5 baby sleeping bag manufacturer, cold climate sleep bag OEM |
| Blog | what is TOG rating, GOTS certified baby products, EN 16781 |

---

## 下一步待做

- [ ] 替换 Formspree Form ID
- [ ] 注册域名（推荐 Porkbun）并绑定 Cloudflare Pages
- [ ] 提交 Google Search Console
- [ ] 添加真实产品图片到 public/ 文件夹
- [ ] 补充更多博客文章（每月2-3篇）
- [ ] 添加 sitemap（astro/sitemap 集成）

---

## 联系信息

- 公司：Taian Lianchuang Textile Co., Ltd.
- 地址：Tianzhufeng Road, Tai'an City, Shandong Province, China 271000
- 电话/WhatsApp/WeChat：+86 182 6538 1705
