# Roguelike Games Collection - Fish Cat Survivors Online

🎮 A premium collection of roguelike games hosted at [fishcatsurvivors.online](https://fishcatsurvivors.online)

## Project Description

This website hosts a curated collection of high-quality roguelike games, providing players with instant access to challenging dungeon crawlers, procedural adventures, and tactical survival games. The site features a modern, Apple-inspired design with excellent mobile responsiveness.

## Features

- **Modern Responsive Design**: Apple-inspired UI with excellent mobile and desktop experience
- **Game Collection Navigation**: Left sidebar with easy game switching
- **SEO Optimized**: Proper meta tags, canonical URLs, and structured content
- **Google Analytics Integration**: Track user engagement and game interactions
- **Cross-Platform Gaming**: All games run directly in the browser
- **Progressive Enhancement**: Works on all modern browsers and devices

## Tech Stack

- **Frontend**: HTML5, CSS3, Tailwind CSS
- **JavaScript**: Vanilla JS for interactions
- **Fonts**: Inter font family with Apple system fonts fallback
- **Analytics**: Google Analytics 4
- **Hosting**: Cloudflare Pages
- **Domain**: Cloudflare DNS

## Game Collection

Currently featuring:
1. **Classic Roguelike Adventure** - Traditional dungeon crawler with procedural generation and permadeath
2. **Darkness Survivors** - Survive against endless waves of dark creatures
3. **Monster Survivors** - Battle hordes of monsters in Unity-powered survival arena
4. **Dragonsweeper** - Roguelike minesweeper with tactical depth and fantasy setting
5. **10 Minutes Till Dawn** - Intense bullet-hell survival shooter with roguelike progression

## Project Structure

```
fishcatsurvivors/
├── index.html          # Main website file
├── README.md           # Project documentation
├── package.json        # Project metadata and scripts
├── .gitignore         # Git ignore rules
└── assets/            # Static assets (if needed)
```

## Local Development

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/fishcatsurvivors.git
   cd fishcatsurvivors
   ```

2. **Open in browser**:
   - Simply open `index.html` in your browser
   - Or use a local server: `python -m http.server 8000`

3. **Development server** (optional):
   ```bash
   npm install -g live-server
   live-server
   ```

## Deployment

### Cloudflare Pages Deployment

1. **Connect your repository** to Cloudflare Pages
2. **Build settings**:
   - Build command: (leave empty)
   - Build output directory: `/`
   - Root directory: `/`

3. **Domain configuration**:
   - Add custom domain: `fishcatsurvivors.online`
   - Configure DNS in Cloudflare dashboard

### Git Workflow

1. **Gitee (Primary)**:
   ```bash
   git remote add gitee https://gitee.com/yourusername/fishcatsurvivors.git
   git push gitee main
   ```

2. **GitHub (Mirror)**:
   ```bash
   git remote add github https://github.com/yourusername/fishcatsurvivors.git
   git push github main
   ```

3. **Sync both repositories**:
   ```bash
   git push --all gitee
   git push --all github
   ```

## SEO Features

- ✅ Semantic HTML structure
- ✅ Proper H1/H2 hierarchy
- ✅ Meta descriptions and keywords
- ✅ Open Graph tags
- ✅ Canonical URLs
- ✅ Mobile-friendly design
- ✅ Fast loading times
- ✅ Google Analytics integration

## Browser Support

- Chrome/Chromium 80+
- Firefox 75+
- Safari 13+
- Edge 80+
- Mobile browsers (iOS Safari, Chrome Mobile)

## Performance

- Lightweight codebase (~15KB HTML/CSS/JS)
- CDN-hosted resources (Tailwind CSS)
- Optimized images and assets
- Progressive loading

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test on multiple devices
5. Submit a pull request

## License

© 2024 Fish Cat Survivors. All rights reserved.

## Contact

- Website: [fishcatsurvivors.online](https://fishcatsurvivors.online)
- Issues: [GitHub Issues](https://github.com/yourusername/fishcatsurvivors/issues)

---

Made with ❤️ for roguelike gaming enthusiasts
