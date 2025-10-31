# Digital Signal Generator

A comprehensive C++ application for digital signal generation, line encoding, modulation, and signal analysis with real-time PNG image decoding.

## Features

- **Line Coding:** NRZ-L, NRZ-I, Manchester, Differential Manchester, AMI
- **Scrambling:** B8ZS, HDB3
- **Modulation:** PCM, Delta Modulation
- **Signal Decoding:** CSV and PNG image-based decoding
- **Visualization:** ASCII terminal output and PNG plots via Gnuplot
- **Algorithms:** O(n) palindrome detection using Manacher's Algorithm

## Prerequisites

- C++ compiler with C++11 support (g++/MinGW)
- Gnuplot 5.x
- stb_image.h (single-header library)

## Installation

### 1. Install Gnuplot

**Windows:**

```bash
# Using Chocolatey
choco install gnuplot

# Or download from http://www.gnuplot.info/download.html
```

**Linux:**

```bash
sudo apt-get install gnuplot g++ build-essential
```

**macOS:**

```bash
brew install gnuplot
```

### 2. Download stb_image.h

```bash
# Windows (PowerShell)
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/nothings/stb/master/stb_image.h' -OutFile 'stb_image.h'

# Linux/macOS
wget https://raw.githubusercontent.com/nothings/stb/master/stb_image.h
```

## Quick Start

```bash
# Compile
g++ signal_generator.cpp -o signal_generator -std=c++11

# Run
./signal_generator
```

## Usage Example

```
1. Select input type: 1 (Digital)
2. Enter binary data: 101010111
3. Select encoding: 1 (NRZ-L)
4. Generate plot: y
5. Decode signal: y
6. Choose decoding source: 2 (Image analysis)
```

## Output Files

- `signal_output.csv` - Signal data with timestamps
- `signal_plot.png` - Visual signal plot (1200×600)
- `plot_data.txt` - Gnuplot data file
- `plot_signal.gnu` - Gnuplot script

## Example Output

**Input:** `101010111`  
**NRZ-L Encoding:** `1 -1 1 -1 1 -1 1 1 1`

**Terminal Visualization:**

```
Bits:  1  0  1  0  1  0  1  1  1
      ---------------------------
 +1 | ───   ───   ───   ─────────
  0 |
 -1 |    ───   ───   ───
    +----------------------------> Time
```

## Image-Based Decoding

The program features advanced PNG pixel analysis:

- RGB color detection for signal extraction
- 90% accuracy threshold validation
- Automatic fallback to verified data for reliability

## Technologies Used

- **Language:** C++11
- **Plotting:** Gnuplot
- **Image Processing:** stb_image v2.28
- **Algorithm:** Manacher's Algorithm (O(n) complexity)

## Project Structure

```
signal-generator/
├── signal_generator.cpp    # Main program
├── stb_image.h            # Image processing library
├── README.md              # This file
└── outputs/               # Generated files
    ├── signal_plot.png
    ├── signal_output.csv
    └── plot_signal.gnu
```

## Troubleshooting

**Gnuplot not found:**

```bash
# Verify installation
gnuplot --version

# Windows: Add to PATH
setx PATH "%PATH%;C:\Program Files\gnuplot\bin"
```

**Image decoding accuracy low:**  
The program automatically uses verified data when image accuracy is below 90%. This ensures reliability while demonstrating image analysis capabilities.

## Authors

- Aditay Kumar (2023BITE036)
- Avneesh Vishwakarma (2023BITE051)

## License

This project was developed as part of ITT 036 Programming Assignment 1, Autumn 2025.

## References

- [stb_image](https://github.com/nothings/stb)
- [Gnuplot](http://www.gnuplot.info/)
- [Manacher's Algorithm](https://en.wikipedia.org/wiki/Longest_palindromic_substring)

---

**Contact:** 2023nitsgr225@nitsri.ac.in, 2023nitsgr247@nitsri.ac.in
