#!/bin/bash

# Fish Cat Survivors - Repository Sync Script
# 同步代码到Gitee和GitHub仓库

echo "🎮 Fish Cat Survivors - Repository Sync Script"
echo "=============================================="

# 检查Git状态
if ! git status &> /dev/null; then
    echo "❌ Error: Not a git repository!"
    exit 1
fi

# 检查是否有未提交的更改
if ! git diff-index --quiet HEAD --; then
    echo "⚠️  Warning: You have uncommitted changes!"
    echo "Please commit your changes first:"
    echo "  git add ."
    echo "  git commit -m 'Your commit message'"
    exit 1
fi

echo "🔄 Starting repository synchronization..."

# 推送到Gitee（主仓库）
echo ""
echo "📤 Pushing to Gitee (Primary)..."
if git push gitee main; then
    echo "✅ Successfully pushed to Gitee"
else
    echo "❌ Failed to push to Gitee"
    GITEE_FAILED=true
fi

# 推送到GitHub（镜像仓库）
echo ""
echo "📤 Pushing to GitHub (Mirror)..."
if git push github main; then
    echo "✅ Successfully pushed to GitHub"
else
    echo "❌ Failed to push to GitHub"
    GITHUB_FAILED=true
fi

echo ""
echo "=============================================="

# 总结结果
if [ "$GITEE_FAILED" = true ] || [ "$GITHUB_FAILED" = true ]; then
    echo "⚠️  Sync completed with errors:"
    [ "$GITEE_FAILED" = true ] && echo "   - Gitee push failed"
    [ "$GITHUB_FAILED" = true ] && echo "   - GitHub push failed"
    echo ""
    echo "Please check your network connection and repository permissions."
else
    echo "🎉 Sync completed successfully!"
    echo ""
    echo "📍 Your code is now available at:"
    echo "   - Gitee: https://gitee.com/yourusername/fishcatsurvivors"
    echo "   - GitHub: https://github.com/yourusername/fishcatsurvivors"
    echo ""
    echo "🚀 Cloudflare Pages will automatically deploy from GitHub in 2-3 minutes."
    echo "   Check deployment status: https://dash.cloudflare.com/"
fi

echo "==============================================" 