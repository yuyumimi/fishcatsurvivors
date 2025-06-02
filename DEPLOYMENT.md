# 部署指南 - Fish Cat Survivors Roguelike Collection

本指南将帮助您将Roguelike游戏合集网站部署到Cloudflare，并设置Gitee与GitHub的代码同步。

## 📋 前置准备

- [x] Cloudflare账户
- [x] GitHub账户
- [x] Gitee账户
- [x] 已购买域名 `fishcatsurvivors.online`
- [x] Git已安装并配置

## 🔧 1. 本地项目设置

### 1.1 初始化Git仓库

```bash
# 初始化Git仓库
git init

# 添加所有文件
git add .

# 创建初始提交
git commit -m "Initial commit: Roguelike games collection website"
```

### 1.2 创建远程仓库

**在Gitee创建仓库：**
1. 访问 [Gitee](https://gitee.com)
2. 点击"新建仓库"
3. 仓库名称：`fishcatsurvivors`
4. 选择"公开"
5. 不要初始化README（因为本地已有）

**在GitHub创建仓库：**
1. 访问 [GitHub](https://github.com)
2. 点击"New repository"
3. 仓库名称：`fishcatsurvivors`
4. 选择"Public"
5. 不要初始化README

### 1.3 添加远程仓库

```bash
# 添加Gitee远程仓库（主仓库）
git remote add gitee https://gitee.com/yourusername/fishcatsurvivors.git

# 添加GitHub远程仓库（镜像仓库）
git remote add github https://github.com/yourusername/fishcatsurvivors.git

# 设置Gitee为默认推送仓库
git remote add origin https://gitee.com/yourusername/fishcatsurvivors.git

# 推送到两个仓库
git push gitee main
git push github main
```

## 🌐 2. Cloudflare设置

### 2.1 域名DNS配置

1. **登录Cloudflare控制台**
2. **添加网站**：
   - 输入域名：`fishcatsurvivors.online`
   - 选择计划（免费版即可）
3. **更新域名服务器**：
   - 在域名注册商处修改NS记录为Cloudflare提供的NS

### 2.2 Cloudflare Pages部署

1. **访问Cloudflare Pages**：
   - 在Cloudflare控制台中选择"Pages"
   - 点击"Create a project"

2. **连接Git仓库**：
   - 选择"Connect to Git"
   - 授权GitHub账户
   - 选择`fishcatsurvivors`仓库

3. **配置构建设置**：
   ```
   Project name: fishcatsurvivors
   Production branch: main
   Build command: (留空)
   Build output directory: /
   Root directory: /
   ```

4. **部署**：
   - 点击"Save and Deploy"
   - 等待部署完成

### 2.3 自定义域名配置

1. **在Pages项目中添加自定义域名**：
   - 进入项目设置
   - 选择"Custom domains"
   - 添加：`fishcatsurvivors.online`
   - 添加：`www.fishcatsurvivors.online`

2. **DNS记录自动添加**：
   - Cloudflare会自动添加CNAME记录
   - 等待SSL证书生成（通常几分钟）

## 🔄 3. 自动同步设置

### 3.1 创建同步脚本

创建 `sync-repos.sh` 文件：

```bash
#!/bin/bash

echo "🔄 Syncing repositories..."

# 推送到Gitee
echo "📤 Pushing to Gitee..."
git push gitee main

# 推送到GitHub
echo "📤 Pushing to GitHub..."
git push github main

echo "✅ Sync completed!"
```

使脚本可执行：
```bash
chmod +x sync-repos.sh
```

### 3.2 使用同步脚本

每次提交后运行：
```bash
# 提交更改
git add .
git commit -m "Update: your changes description"

# 同步到两个仓库
./sync-repos.sh
```

### 3.3 自动化部署设置

**Cloudflare Pages自动部署：**
- 每次推送到GitHub main分支时自动触发部署
- 通常2-3分钟完成部署
- 可在Pages控制台查看部署状态

## 📈 4. SEO和分析设置

### 4.1 Google Search Console

1. **验证网站所有权**：
   - 访问 [Google Search Console](https://search.google.com/search-console)
   - 添加属性：`https://fishcatsurvivors.online`
   - 使用DNS验证或HTML标签验证

2. **提交Sitemap**：
   ```xml
   https://fishcatsurvivors.online/sitemap.xml
   ```

### 4.2 Google Analytics验证

确认GA4跟踪代码正常工作：
- 访问网站并检查实时数据
- 确认事件追踪正常

## 🔧 5. 性能优化

### 5.1 Cloudflare优化设置

在Cloudflare控制台中：

1. **缓存设置**：
   - 页面规则：`*.html` → 缓存级别：标准
   - 页面规则：`*.css, *.js` → 缓存级别：缓存所有

2. **速度优化**：
   - 启用Auto Minify（HTML, CSS, JS）
   - 启用Brotli压缩
   - 启用HTTP/2

3. **安全设置**：
   - SSL/TLS模式：完整（严格）
   - 始终使用HTTPS：开启

## 📊 6. 监控和维护

### 6.1 定期检查项目

- 检查网站可访问性
- 监控Google Analytics数据
- 检查游戏iframe是否正常加载
- 监控Cloudflare Pages部署状态

### 6.2 更新工作流

```bash
# 1. 本地开发
# 编辑文件...

# 2. 测试
python -m http.server 8000
# 在浏览器中测试功能

# 3. 提交和同步
git add .
git commit -m "Feature: describe your changes"
./sync-repos.sh

# 4. 验证部署
# 等待Cloudflare Pages自动部署完成
# 访问网站验证更改
```

## 🆘 7. 故障排除

### 7.1 常见问题

**域名不可访问**：
- 检查DNS记录是否正确
- 确认域名NS已指向Cloudflare
- 等待DNS传播（最多48小时）

**部署失败**：
- 检查GitHub仓库权限
- 确认构建设置正确
- 查看Cloudflare Pages部署日志

**游戏无法加载**：
- 检查iframe URL是否有效
- 确认Content Security Policy设置
- 检查HTTPS混合内容问题

### 7.2 联系支持

- Cloudflare支持：通过控制台提交工单
- GitHub支持：[GitHub Support](https://support.github.com)
- Gitee支持：[Gitee Help](https://gitee.com/help)

---

🎉 **部署完成！** 您的Roguelike游戏合集网站现已成功部署到 `https://fishcatsurvivors.online` 