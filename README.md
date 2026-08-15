# Custom Linux Commands

A small collection of custom command-line tools for Linux, installed as standalone commands you can run from anywhere on your system.

Currently included:

- **`qrcode`** — generate a QR code image from any text or URL, right from your terminal.

## 📦 Requirements

- Linux (tested with `bash`)
- Python 3
- `sudo` privileges (needed to install the command into `/usr/local/bin`)

Python dependencies are listed in [`requirements.txt`](requirements.txt):

```
qrcode
gTTS
colorama
```

## 🚀 Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/harikrishnan-knr/Custom_Linux_Commands.git
   cd Custom_Linux_Commands
   ```

2. (Recommended) Create and activate a virtual environment, then install the Python dependencies:

   ```bash
   python -m venv .venv
   source .venv/bin/activate
   pip install -r requirements.txt
   ```

3. Run the installer script and follow the prompt:

   ```bash
   chmod +x QR-Code.sh
   ./QR-Code.sh
   ```

   You'll be asked:

   ```
   QR Code Generator Tool
   Is This OK To Install The Tool [y/n]:
   ```

   Enter `y` to install. This copies the `qrcode` script to `/usr/local/bin/` and makes it executable, so it becomes available as a regular command on your system.

4. When you're done working in the virtual environment, you can exit it with:

   ```bash
   deactivate
   ```

## 🧰 Usage

Once installed, run the tool from anywhere in your terminal:

```bash
qrcode
```

You'll be prompted for:

1. **Input value** — the text, link, or data you want encoded into the QR code.
2. **Output file path** — where to save the generated image, including the file name and extension (e.g. `.png` or `.jpg`).

Example session:

```
$ qrcode
 Hi Hello !!!
 It is a QR Code Generator Script...
 Enter the input value : https://github.com/harikrishnan-knr
 Enter the file path, file name, & file type ( mentaion the file type : like .png .jpg) : ~/Desktop/qr.png
 QR Code Successfully Generated !!!
```

## 📁 Project Structure

```
Custom_Linux_Commands/
├── QR-Code.sh          # Installer script — copies `qrcode` into /usr/local/bin
├── qrcode               # The actual QR code generator command (Python)
├── requirements.txt      # Python dependencies
└── README.md
```

## ⚠️ Notes

- The installer uses `sudo cp` and `sudo chmod` to place the command in `/usr/local/bin`, so you'll be prompted for your password during installation.
- To uninstall, simply remove the command:

  ```bash
  sudo rm /usr/local/bin/qrcode
  ```

## 🤝 Contributing

More custom Linux commands are planned for this repo. Contributions, ideas, and pull requests are welcome — feel free to open an issue or submit a PR.

## 📄 License

No license has been specified yet for this repository. Until one is added, please check with the repository owner before reusing this code.
