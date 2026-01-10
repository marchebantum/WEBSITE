# Zenias Website - Production Deployment

This is the production-ready version of the Zenias website, refactored for web deployment.

## 📁 Project Structure

```
/
├── index.html              # Main entry point (production file)
├── css/
│   └── output.css         # Compiled Tailwind CSS (production)
├── src/
│   └── input.css          # Tailwind source file
├── assets/
│   └── images/            # All image assets
├── data/                  # Lottie animation JSON files
├── documents/             # Custom fonts
├── js/
│   └── gsap/             # GSAP animation library files
├── tailwind.config.js     # Tailwind configuration
├── postcss.config.js      # PostCSS configuration
├── package.json           # Node.js dependencies
└── dev-docs/             # Development documentation and backups
    └── backups/          # Previous versions and backups
```

## 🚀 Deployment

### Build Process

**First-time setup:**
```bash
npm install
```

**Build Tailwind CSS for production:**
```bash
npm run build
```

This will compile `src/input.css` into `css/output.css` (minified and optimized).

**Watch mode (for development):**
```bash
npm run watch:css
```

### Quick Deploy
1. Run `npm run build` to compile the CSS
2. Upload all files to your web server's root directory (except `node_modules/`)
3. The site uses relative paths and should work immediately

### Required Files for Deployment
- `index.html` (main file)
- `css/output.css` (compiled Tailwind CSS - **required**)
- `assets/` directory (all images)
- `data/` directory (animation JSON files)
- `documents/` directory (fonts)
- `js/` directory (GSAP libraries)

**Note:** The `css/output.css` file is already built and included in the repository for immediate deployment.

### External Dependencies
The site uses the following CDN-hosted resources (no local copies needed):
- Lucide Icons
- Three.js
- Lottie Web
- Google Fonts

**Tailwind CSS:** Now self-hosted (compiled from `src/input.css` to `css/output.css`)

### Server Requirements
- Any static file hosting (GitHub Pages, Netlify, Vercel, etc.)
- No server-side processing required
- Modern browser support (ES6+)

## 🔄 Version Control

### Optimal Version
The optimal/stable version is tagged as `optimal-v1.0` in git. To restore:
```bash
git checkout optimal-v1.0
```

### Current Deployment Branch
The refactored deployment version is on branch `deployment-refactor`.

## 📝 Notes
- All asset paths use relative URLs
- Fonts are self-hosted in `documents/`
- Images are optimized for web in `assets/images/`
- Tailwind CSS is compiled from source (not using CDN for production)
- Development files and reports are archived in `dev-docs/`

## 🛠️ Development

### Making Changes to Styles
1. Edit `tailwind.config.js` for theme changes (colors, fonts, etc.)
2. Edit `src/input.css` to add custom CSS or Tailwind directives
3. Run `npm run build` to compile changes
4. Refresh the browser to see updates

### Custom Tailwind Configuration
The project includes custom theme extensions:
- Custom colors: `paper`, `ink`, `sepia`, `stone`, `rust`, `dark`, `gold`
- Custom fonts: Inter, Cormorant Garamond, JetBrains Mono, Open Sans, Orange Avenue
- Custom animations: `fade-in`, `pulse-slow`

## 🌐 Meta Tags
The site includes comprehensive SEO and social media meta tags:
- Primary meta tags (title, description, keywords)
- Open Graph tags (Facebook)
- Twitter Card tags
- Canonical URL
- Favicon support

## 📧 Contact
For issues or questions, contact: contact@zenias.io
