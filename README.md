
# 🎮 Catch n Score

An interactive arcade-style game built using **Java Swing**, featuring multiple game modes, real-time animations, keyboard and mouse controls, and sound effects. Play directly in your browser without installing Java!

<p align="center">
  <a href="https://catch-n-score-game.onrender.com/">🎮 Play Live Demo</a> •
  <a href="https://github.com/swasti-garg/Catch-n-Score-Game">📂 Source Code</a>
</p>
---

## ✨ Features

- **Multiple Game Modes**
  - 🍎 Fruit Mode – Catch falling fruits using a movable basket.
  - 🔤 Letter Mode – Catch letters to form target words.
  - 🏆 Challenge Mode – Additional challenge-oriented gameplay.

- **Interactive Gameplay**
  - Real-time falling object animations.
  - Keyboard and mouse-based basket movement.
  - Score, lives, and level tracking.
  - Pause, resume, and restart functionality.

- **Game Mechanics**
  - Collision detection between falling objects and the basket.
  - Increasing difficulty across levels.
  - Level completion and game-over states.

- **Sound Effects**
  - Catch, miss, level-up, and game-over audio feedback.

- **Browser Accessibility**
  - Runs through a browser-based Java runtime using CheerpJ.
  - No separate Java installation required for players.

## 🛠️ Tech Stack

| Category | Technologies |
|---|---|
| Language | Java |
| GUI | Java Swing, AWT |
| Event Handling | KeyListener, MouseMotionListener, ActionListener |
| Animation | Swing Timer |
| Audio | Java Sound API |
| Browser Runtime | CheerpJ |
| Hosting | Render Static Site |

## 🎯 Controls

| Key / Input | Action |
|---|---|
| ENTER | Start game / Next level |
| LEFT ARROW | Move basket left |
| RIGHT ARROW | Move basket right |
| Mouse Movement | Move basket |
| M | Toggle game mode (menu) |
| P | Pause / Resume |
| R | Restart after game over |

## 🏗️ Project Structure

```text
Catch-n-Score/
│
├── public/
│   ├── index.html
│   ├── game.jar
│   ├── words.txt
│   ├── .nojekyll
│   └── sounds/
│
├── src/
│   ├── Basket.java
│   ├── Catchable.java
│   ├── ChallengeMode.java
│   ├── FallingItem.java
│   ├── FruitItem.java
│   ├── FruitMode.java
│   ├── FruitType.java
│   ├── GameMode.java
│   ├── GamePanel.java
│   ├── GameState.java
│   ├── LetterItem.java
│   ├── LetterMode.java
│   ├── mygame.java
│   ├── SoundPlayer.java
│   └── WordLoader.java
│
├── web-shim/
│   └── SoundPlayer.java
│
├── build.sh
└── README.md
```

## ⚙️ Run Locally

### Prerequisites

- Java Development Kit (JDK 17 or later)
- Git
- A modern web browser

### 1. Clone the repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
cd Catch-n-Score
```

### 2. Build the Java application

```bash
chmod +x build.sh
./build.sh
```

This generates the packaged game JAR inside the `public/` directory.

### 3. Start a local web server

```bash
npx http-server public -p 8080
```

### 4. Open the game

Visit:

```text
http://localhost:8080
```

The browser loads the CheerpJ runtime and launches the Java application.

## 🌐 Deployment

The application can be hosted as a static website using Render.

1. Push the project to a GitHub repository.
2. Create a new Static Site on Render.
3. Connect your GitHub repository.
4. Configure the following settings:

| Setting | Value |
|---|---|
| Branch | `main` |
| Root Directory | Leave empty |
| Build Command | Leave empty |
| Publish Directory | `public` |

5. Deploy the application.

Once deployment is complete, Render provides a public URL through which users can access the game.

## 🧠 Key Learnings

- Implemented object-oriented programming principles using Java.
- Developed interactive GUI applications using Swing and AWT.
- Applied event-driven programming for keyboard and mouse interactions.
- Implemented collision detection and real-time game animations.
- Managed game states, scoring, levels, and multiple game modes.
- Explored browser-based execution of Java applications using CheerpJ.
- Learned static website deployment using Render.

## 🚀 Future Improvements

- Add more game modes and difficulty levels.
- Introduce player high scores and leaderboards.
- Improve mobile and touch-screen controls.
- Add customizable themes and game settings.
- Enhance animations and gameplay experience.

---

## 👩‍💻 Author

**Swasti Garg**

B.Tech Computer Science and Engineering

---

⭐ If you enjoyed playing Catch n Score, consider giving the repository a star!
