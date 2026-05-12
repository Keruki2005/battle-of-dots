#!/bin/bash

# War of Dots - Automatic Linux Installation Script
# This script installs War of Dots and its dependencies on Linux

set -e  # Exit on any error

echo "======================================"
echo "War of Dots - Linux Installation"
echo "======================================"
echo ""

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed."
    echo "Please install Python 3 first using your package manager:"
    echo "  Ubuntu/Debian: sudo apt-get install python3 python3-pip"
    echo "  Fedora: sudo dnf install python3 python3-pip"
    echo "  Arch: sudo pacman -S python python-pip"
    exit 1
fi

echo "✓ Python 3 found: $(python3 --version)"
echo ""

# Create installation directory
INSTALL_DIR="$HOME/war-of-dots"
if [ -d "$INSTALL_DIR" ]; then
    echo "Installation directory already exists at $INSTALL_DIR"
    read -p "Do you want to overwrite it? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "Installation cancelled."
        exit 0
    fi
    rm -rf "$INSTALL_DIR"
fi

mkdir -p "$INSTALL_DIR"
echo "✓ Created installation directory: $INSTALL_DIR"
echo ""

# Clone the repository
echo "Downloading War of Dots..."
cd "$INSTALL_DIR"
git clone https://github.com/Keruki2005/War-of-dots-fork.git .
echo "✓ Repository cloned successfully"
echo ""

# Create virtual environment
echo "Setting up Python virtual environment..."
python3 -m venv venv
source venv/bin/activate
echo "✓ Virtual environment created"
echo ""

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip setuptools wheel
echo "✓ pip upgraded"
echo ""

# Install dependencies
echo "Installing dependencies..."
pip install pygame orjson numpy perlin-noise
echo "✓ Dependencies installed"
echo ""

# Create convenience scripts
echo "Creating launcher scripts..."

# Server launcher
cat > "$INSTALL_DIR/run_server.sh" << 'EOF'
#!/bin/bash
cd "$(dirname "$0")"
source venv/bin/activate
python3 wod_server.py
EOF
chmod +x "$INSTALL_DIR/run_server.sh"

# Client launcher
cat > "$INSTALL_DIR/run_client.sh" << 'EOF'
#!/bin/bash
cd "$(dirname "$0")"
source venv/bin/activate
python3 wod_client.py
EOF
chmod +x "$INSTALL_DIR/run_client.sh"

echo "✓ Launcher scripts created"
echo ""

# Create desktop shortcuts (optional)
DESKTOP_DIR="$HOME/.local/share/applications"
mkdir -p "$DESKTOP_DIR"

cat > "$DESKTOP_DIR/war-of-dots-server.desktop" << EOF
[Desktop Entry]
Type=Application
Name=War of Dots - Server
Comment=Start War of Dots Server
Exec=$INSTALL_DIR/run_server.sh
Terminal=true
Icon=application-x-executable
Categories=Game;
EOF

cat > "$DESKTOP_DIR/war-of-dots-client.desktop" << EOF
[Desktop Entry]
Type=Application
Name=War of Dots - Client
Comment=Start War of Dots Client
Exec=$INSTALL_DIR/run_client.sh
Terminal=true
Icon=application-x-executable
Categories=Game;
EOF

echo "✓ Desktop shortcuts created (may appear in your applications menu)"
echo ""

# Verification
echo "======================================"
echo "Installation Complete!"
echo "======================================"
echo ""
echo "Installation directory: $INSTALL_DIR"
echo ""
echo "To play the game:"
echo ""
echo "1. Start the SERVER (run in one terminal):"
echo "   $INSTALL_DIR/run_server.sh"
echo "   or"
echo "   cd $INSTALL_DIR && ./run_server.sh"
echo ""
echo "2. Start CLIENT(s) (run in other terminal(s)):"
echo "   $INSTALL_DIR/run_client.sh"
echo "   or"
echo "   cd $INSTALL_DIR && ./run_client.sh"
echo ""
echo "3. Follow the on-screen prompts to connect"
echo ""
echo "Game Controls:"
echo "  Left Click:  Select unit and draw path"
echo "  Right Click: Pan camera"
echo "  Scroll:      Zoom in/out"
echo "  Spacebar:    Send moves to server"
echo "  C:           Clear drawn paths"
echo "  P:           Pause/Unpause"
echo ""
echo "For more details, see: $INSTALL_DIR/README.md"
echo ""