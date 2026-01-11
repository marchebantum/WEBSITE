# Zenias Website - Production Deployment

This is the **OPTIMAL/PRODUCTION** version of the Zenias website, ready for deployment.

## 🎯 IMPORTANT: Optimal vs Documentation

### ✅ **OPTIMAL/PRODUCTION FILES** (Root Level)
These are the **active, production-ready files** that represent the optimal version:

```
/
├── index.html              # ⭐ MAIN PRODUCTION FILE - This is the optimal version
├── css/
│   └── output.css         # Compiled Tailwind CSS (production)
├── assets/
│   └── images/            # All production image assets
├── data/                  # Lottie animation JSON files (production)
├── documents/             # Custom fonts (production)
├── js/
│   └── gsap/             # GSAP animation library files (production)
├── src/
│   └── input.css         # Tailwind source file
├── tailwind.config.js     # Tailwind configuration
├── postcss.config.js      # PostCSS configuration
├── package.json           # Node.js dependencies
└── README.md              # This file
```

**These root-level files are the OPTIMAL VERSION. Use these for deployment.**

### 📚 **DOCUMENTATION FILES** (docs/ folder)
All documentation, reports, backups, and development files are organized in `docs/`:

```
docs/
├── optimization/          # Optimization analysis and status reports
│   ├── ADDITIONAL_OPTIMIZATIONS.md
│   ├── OPTIMIZATION_ANALYSIS.md
│   └── OPTIMIZATION_STATUS.md
└── development/          # Development history, backups, and reports
    ├── backups/          # Previous HTML versions (NOT optimal)
    │   ├── Base Code V1.html
    │   ├── Base Code V1-v1.html
    │   ├── Base Code V1-v2.html
    │   ├── index-v2-backup.html
    │   └── index-v3-refactored.html
    ├── image-backups/     # Backup images (NOT used in production)
    ├── unused-images/     # Unused images (NOT used in production)
    └── *.md              # Development reports and documentation
```

**Files in `docs/` are for reference only. DO NOT use these for deployment.**

## 🔄 Restoring to Optimal Backup Version

### Using Git Tags
The optimal version is protected with git tags:

```bash
# View available tags
git tag -l

# Restore to optimal backup tag
git checkout optimal-backup

# Or restore to a specific optimal version
git checkout optimal-v1.0
git checkout optimal-v2.0
git checkout optimal-v3.0
```

### Current Optimal Branch
The current optimal version is on branch `optimal`:
```bash
git checkout optimal
```

**The `index.html` file in the root is always the optimal/production version.**

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
2. Upload all **root-level files and folders** to your web server's root directory (except `node_modules/` and `docs/`)
3. The site uses relative paths and should work immediately

### Required Files for Deployment
- ✅ `index.html` (main file - **OPTIMAL VERSION**)
- ✅ `css/output.css` (compiled Tailwind CSS - **required**)
- ✅ `assets/` directory (all images)
- ✅ `data/` directory (animation JSON files)
- ✅ `documents/` directory (fonts)
- ✅ `js/` directory (GSAP libraries)

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

## 📝 Development Notes

### Making Changes to Styles
1. Edit `tailwind.config.js` for theme changes (colors, fonts, etc.)
2. Edit `src/input.css` to add custom CSS or Tailwind directives
3. Run `npm run build` to compile changes
4. Refresh the browser to see updates

### Scroll navigation guardrails (do not refactor without intent)
- Page-to-page scroll transitions live inline in `index.html` under the comment "Mouse Wheel / Scroll Navigation."
- Transitions fire only when at the relevant edge (`edgeEpsilonPx=4`) *and* the wheel delta exceeds `wheelDeltaThresholdPx=70` (ignores noise below `wheelMinDeltaPx=4`).
- Home follows the same rule: a strong downward edge scroll moves to Services; other pages require top/bottom edges respectively.
- Do not move this logic into other files or tweak these constants unless deliberately retuning scroll behavior. Keep this section in place so it always ships with the page.

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

---

## 🗂️ Repository Organization Summary

| Location | Purpose | Use for Deployment? |
|----------|---------|---------------------|
| **Root level files** (`index.html`, `assets/`, `css/`, `js/`, etc.) | **OPTIMAL/PRODUCTION** | ✅ **YES** |
| `docs/optimization/` | Optimization reports | ❌ No (reference only) |
| `docs/development/` | Development history, backups | ❌ No (reference only) |
| `docs/development/backups/` | Old HTML versions | ❌ No (reference only) |

**Remember: If it's in the root, it's optimal. If it's in `docs/`, it's documentation.**