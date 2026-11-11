# Catch n Score (web)

Your original Java/Swing game, running in the browser via [CheerpJ](https://cheerpj.com)
(a WebAssembly JVM). **No Java source was changed** — `src/` is byte-identical to the original.

```
src/        original .java files (untouched)
public/     the deployable website  <- upload/deploy THIS folder
  index.html   loads CheerpJ, runs game.jar
  game.jar     compiled from src/ (Java 17 bytecode)
  words.txt, sounds/   game assets (sounds played via browser audio)
build.sh    rebuilds public/game.jar after you edit src/
```

## Run locally
    cd public && python3 -m http.server 8080     # then open http://localhost:8080
(Must be served over HTTP; opening index.html by double-click will not work.)

## Deploy (static hosting, serve `public/` at the site ROOT)
- **Netlify**: drag-and-drop the `public` folder at app.netlify.com/drop
- **Vercel / Cloudflare Pages**: import the repo, set output/publish directory to `public`, no build command
- **GitHub Pages**: works if the site is at the domain root (user.github.io or a custom domain).
  A project site (user.github.io/repo/) breaks because CheerpJ's `/app/` points to the domain root.

## After editing Java code
    ./build.sh      # needs JDK 17+
then redeploy `public/`.

Note: CheerpJ is free for personal / non-commercial use; check cheerpj.com/licensing for commercial use.

## Note on sound
`src/SoundPlayer.java` is untouched, but the web build compiles `web-shim/SoundPlayer.java` instead
(same class/method name) so sounds play through the browser's audio. Desktop Java is unaffected.
