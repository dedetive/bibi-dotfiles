# My Dotfiles

Currently, I'm running EndeavourOS with Sway WM.

Personal and cozy dotfiles from [dedetive](https://github.com/dedetive), filled with uwu vibes, soft colors, and cuteness.

This repository includes various config files and scripts to customize the Linux desktop experience.

<details>
  <summary>Swaylock</summary>
  
## swaylock/

A soft and colorful `swaylock-effects` configuration inspired by cozy aesthetics 💖

## 📄 Files

Inside the `swaylock/` directory, you'll find a custom lockscreen setup using `swaylock-effects`, with multiple styles split into clean and reusable files.

```text
bibi-dotfiles/
├── swaylock/
│   ├── lock.sh
│   └── styles/
│       ├── main.style
│       └── success.style
└── Other stuff!
```

- 🎀 `lock.sh` — a script that handles two-stage locking with password validation
- 🌸 `main.style` — the style used before entering the password
- 🌿 `success.style` — the style used after entering the correct password, skippable but disappears in 1.8 seconds

---

## 💡 Features

✨ Custom messages like:
- `"o/"` and small `"uwu"` instead of time/date
- `":0"` for caps-lock
- `"Hmm... <.<"` for verifying
- `"o.O"` for cleared
- `"Naw >:("` for wrong password
- `":3"` and small `"Yippeee"` after success

🎨 Personalized colors for every state:
- Idle
- Verifying
- Wrong password
- Cleared
- Correct/Post-auth

📸 Uses:
- High `--effect-blur` and low `--effect-pixelate` for a dreamy look and privacy
- `--effect-vignette` for cooler visuals
- Screenshots background (`--screenshots`)
- Cute texts
- All rings, insides and text colors were handpicked and are different per state, all deep yet soft:
  - Regular: Purple and pink
  - Cleared: Orange
  - Verifying: Blue
  - Wrong: Red
  - Correct: Green

---

## 🧪 Dependencies

Make sure to install:

- [swaylock-effects](https://github.com/mortie/swaylock-effects)
- Wayland (tested on sway)

---

## 🛠 How to Use

```bash
git clone https://github.com/dedetive/bibi-dotfiles.git
cd bibi-dotfiles/swaylock
chmod +x lock.sh
./lock.sh
```

The script first locks with a password-required swaylock using `main.style`.  
If the password is correct, it launches a second swaylock in `--grace` mode with `success.style`, just because I find it cute when there's a success screen.

> ⚠️ **Note**: Due to how `swaylock-effects` handles screen drawing, there’s a tiny flicker between the first and second lock — the screen briefly shows your desktop before applying the blur again.  
> I personally don't mind it since the lock is still secure, as you'd already have inserted the correct password and it's just a few milliseconds. I'd be grateful if you'd be able to figure it out, though!

---

## 🖼️ Examples

Main:
![image](https://github.com/user-attachments/assets/f402b225-bd81-4bd2-a530-d2a79071fc25)
Cleared:
![image](https://github.com/user-attachments/assets/287c356e-8410-44f9-bcb7-110537879859)
Verifying:
![image](https://github.com/user-attachments/assets/24c5920e-1e7b-41e7-a436-0a58f94d254e)
Wrong:
![image](https://github.com/user-attachments/assets/5a0f3d41-6b36-40b9-a42d-ab6e6ce9e4c6)
Correct:
![image](https://github.com/user-attachments/assets/48787ea5-cadc-4fd9-811a-6d2dd9a9b1f3)

</details>

<details> <summary>i3lock</summary>
  
## i3lock/

A dreamy and colorful i3lock setup powered by maim and imagemagick, styled with cute vibes and a soft pastel aesthetic 🌸

## 📄 Files

Inside the i3lock/ directory, you’ll find a custom lockscreen setup using i3lock, blurred screenshots, and themed style files.

```text
bibi-dotfiles/
├── i3lock/
│   ├── lock.sh
│   └── styles/
│       ├── main.style
│       └── success.style
└── Other stuff!
```

- 🎀 `lock.sh` — a script that handles two-stage locking with password validation
- 🌸 `main.style` — the style used before entering the password
- 🌿 `success.style` — the style used after entering the correct password, skippable but disappears in 1.8 seconds

## 💡 Features

✨ Custom messages like:
- `"o/"` and small `"uwu"` instead of time/date
- `":0"` for caps-lock
- `"Hmm... <.<"` for verifying
- `"o.O"` for cleared
- `"Naw >:("` for wrong password
- `":3"` and small `"Yippeee"` after success

🎨 Personalized colors for every state:
- Idle
- Verifying
- Wrong password
- Cleared
- Correct/Post-auth

📸 Uses:
- Takes a real-time screenshot with `maim`
- Applies heavy blur, vignette, and soft darkening using `imagemagick`
- Cute texts
- All rings, insides and text colors were handpicked and are different per state, all deep yet soft:
  - Regular: Purple and pink
  - Cleared: Orange
  - Verifying: Blue
  - Wrong: Red
  - Correct: Green

---

## 🧪 Dependencies

Make sure to install:

- [i3lock](https://github.com/i3/i3lock)
- [maim](https://github.com/naelstrof/maim)
- [ImageMagick](https://github.com/ImageMagick/ImageMagick)
- X11, doesn't necessarily have to be i3!

---

## 🛠 How to Use

```bash
git clone https://github.com/dedetive/bibi-dotfiles.git
cd bibi-dotfiles/i3lock
chmod +x lock.sh
./lock.sh
```

The script will:
1. Take a screenshot of the current screen
2. Apply blur and vignette using imagemagick
3. Launch i3lock with the main style
4. If the password is correct, it launches a second i3lock instance with a success style (just for a little celebration)
5. Waits for 1.8 seconds or enter input
6. Fades out the lock gracefully

> ⚠️ **Note**: The success lock is mostly aesthetic and shows a soft confirmation that you did well. You can disable this behavior by editing the script.

---

## 🖼️ Examples

Main:
![image](https://github.com/user-attachments/assets/f402b225-bd81-4bd2-a530-d2a79071fc25)
Cleared:
![image](https://github.com/user-attachments/assets/287c356e-8410-44f9-bcb7-110537879859)
Verifying:
![image](https://github.com/user-attachments/assets/24c5920e-1e7b-41e7-a436-0a58f94d254e)
Wrong:
![image](https://github.com/user-attachments/assets/5a0f3d41-6b36-40b9-a42d-ab6e6ce9e4c6)
Correct:
![image](https://github.com/user-attachments/assets/48787ea5-cadc-4fd9-811a-6d2dd9a9b1f3)

</details>

## ✨ License

MIT License.
Feel free to fork, remix, or just take inspiration 💕

Made with love by [dedetive](https://github.com/dedetive)!
