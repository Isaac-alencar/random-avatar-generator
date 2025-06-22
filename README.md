# Random Avatar Generator

A simple Ruby app that generates **unique visual avatar patterns** (identicons) from a username or email.  
Inspired by how GitHub, GitLab, and Gravatar provide random avatars when users don’t upload a profile picture.

This project is:
- Terminal-based
- No Rails — just plain Ruby + Minitest
- Deterministic — same input → same avatar
- Uses a simple 6×6 grid, generated from a SHA-256 hash

---

## How It Works

✅ You provide a **username** or **email**  
✅ The app hashes the input using SHA-256  
✅ The hash is converted into a stream of bits  
✅ Those bits control a **6×6 grid** of cells (on/off)  
✅ The grid is optionally mirrored for visual symmetry  
✅ The result is shown as **ASCII art** in the terminal  
✅ (Planned) Option to output as PNG image

---

## Example Output

```text
 █   ██   █ 
 █   ██   █ 
 █ █ ██ █ █ 
 ██      ██ 
 █ █ ██ █ █ 
 ██ █  █ ██ 
```

Each unique input will generate a different pattern.

---

## Project Goals

- [x] Simple and readable algorithm
- [x] Deterministic output
- [x] Good test coverage with Minitest
- [x] Output as ASCII art
- [ ] (Planned) PNG image export with ChunkyPNG
- [ ] (Planned) Add color
- [ ] (Planned) CLI interface

---

## How to Run

```bash
bin/run "your_username_or_email"
```

Why?

🧑‍💻 A fun project to learn:
- Hashing and entropy
- Grid-based drawing
- Deterministic pattern generation
- Test-driven development
- Building apps in plain Ruby (no Rails)

Roadmap
| Version | Milestone                                |
| ------- | ---------------------------------------- |
| v0.1.0  | Basic working version, ASCII grid, tests |
| v0.2.0  | PNG export                               |
| v0.3.0  | CLI options (size, color, output file)   |
| v1.0.0  | Stable release                           |


---

