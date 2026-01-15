# CrispiansWorld — Build & Preview

This is a simple static website. There is no build step required to run the site — `index.html` and `style.css` are ready to be opened in a browser.

Quick ways to preview the site locally (Windows PowerShell):

- Open directly in a browser:

  - Double-click `index.html` in File Explorer, or right-click → Open with → your browser.

- Serve with Python (uses built-in HTTP server):

```powershell
# If you have Python 3 installed
py -3 -m http.server 8000
# or
python -m http.server 8000
```
Then open `http://localhost:8000` in your browser.

- Serve with Node (no global install required, uses `npx`):

```powershell
# Using http-server via npx
npx http-server . -p 8000
```

- Use VS Code Live Server extension:

  1. Install the "Live Server" extension in VS Code.
  2. Open the folder in VS Code and click "Go Live" in the status bar.

Optional: add an npm script for a dev server

If you prefer using npm scripts, create a `package.json` and add `http-server` as a dev dependency:

```powershell
# initialize and install
npm init -y
npm install --save-dev http-server
# start with
npx http-server . -p 8000
```

Notes and next steps

- Since this is a static site, there is no compilation step unless you add build tools (bundlers, preprocessors, etc.).
- Tell me if you want me to add a `package.json` with scripts, a simple `npm`-based dev setup, or to configure a bundler like Parcel/Esbuild/Vite for building/minifying assets.
