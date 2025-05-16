#!/usr/bin/env bash

# Source the theme file to get color variables
THEME_FILE="$(dirname "$0")/theme.bash"
source "$THEME_FILE"

# Output file path
OUTPUT_FILE="$(dirname "$0")/kdeglobals"

# Function to convert hex color to RGB format (comma separated)
hex_to_rgb() {
    hex="$1"
    # Remove # if present
    hex="${hex#"#"}"
    
    # Convert to RGB components
    r=$(printf "%d" 0x${hex:0:2})
    g=$(printf "%d" 0x${hex:2:2})
    b=$(printf "%d" 0x${hex:4:2})
    
    echo "$r,$g,$b"
}

# Create the kdeglobals file
cat > "$OUTPUT_FILE" << EOL
[ColorEffects:Disabled]
ChangeSelectionColor=
Color=56,56,56
ColorAmount=0
ColorEffect=0
ContrastAmount=0.65
ContrastEffect=1
Enable=
IntensityAmount=0.1
IntensityEffect=2

[ColorEffects:Inactive]
ChangeSelectionColor=true
Color=112,111,110
ColorAmount=0.025
ColorEffect=2
ContrastAmount=0.1
ContrastEffect=2
Enable=false
IntensityAmount=0
IntensityEffect=0

[Colors:Button]
BackgroundAlternate=$(hex_to_rgb "$color1")
BackgroundNormal=$(hex_to_rgb "$color0")
DecorationFocus=$(hex_to_rgb "$color4")
DecorationHover=$(hex_to_rgb "$color5")
ForegroundActive=$(hex_to_rgb "$color7")
ForegroundInactive=$(hex_to_rgb "$color4")
ForegroundLink=$(hex_to_rgb "$color6")
ForegroundNegative=$(hex_to_rgb "$color4")
ForegroundNeutral=$(hex_to_rgb "$color6")
ForegroundNormal=$(hex_to_rgb "$color7")
ForegroundPositive=$(hex_to_rgb "$color5")
ForegroundVisited=$(hex_to_rgb "$color5")

[Colors:Complementary]
BackgroundAlternate=$(hex_to_rgb "$color1")
BackgroundNormal=$(hex_to_rgb "$color0")
DecorationFocus=$(hex_to_rgb "$color4")
DecorationHover=$(hex_to_rgb "$color5")
ForegroundActive=$(hex_to_rgb "$color7")
ForegroundInactive=$(hex_to_rgb "$color4")
ForegroundLink=$(hex_to_rgb "$color6")
ForegroundNegative=$(hex_to_rgb "$color4")
ForegroundNeutral=$(hex_to_rgb "$color6")
ForegroundNormal=$(hex_to_rgb "$color7")
ForegroundPositive=$(hex_to_rgb "$color5")
ForegroundVisited=$(hex_to_rgb "$color5")

[Colors:Header]
BackgroundAlternate=$(hex_to_rgb "$color1")
BackgroundNormal=$(hex_to_rgb "$background")
DecorationFocus=$(hex_to_rgb "$accent")
DecorationHover=$(hex_to_rgb "$color5")
ForegroundActive=$(hex_to_rgb "$foreground")
ForegroundInactive=$(hex_to_rgb "$color7")
ForegroundLink=$(hex_to_rgb "$color6")
ForegroundNegative=$(hex_to_rgb "$color_red")
ForegroundNeutral=$(hex_to_rgb "$color_yellow")
ForegroundNormal=$(hex_to_rgb "$foreground")
ForegroundPositive=$(hex_to_rgb "$color_green")
ForegroundVisited=$(hex_to_rgb "$color5")

[Colors:Header][Inactive]
BackgroundAlternate=$(hex_to_rgb "$color8")
BackgroundNormal=$(hex_to_rgb "$background")
DecorationFocus=$(hex_to_rgb "$accent")
DecorationHover=$(hex_to_rgb "$color5")
ForegroundActive=$(hex_to_rgb "$foreground")
ForegroundInactive=$(hex_to_rgb "$color7")
ForegroundLink=$(hex_to_rgb "$color6")
ForegroundNegative=$(hex_to_rgb "$color_red")
ForegroundNeutral=$(hex_to_rgb "$color_yellow")
ForegroundNormal=$(hex_to_rgb "$foreground")
ForegroundPositive=$(hex_to_rgb "$color_green")
ForegroundVisited=$(hex_to_rgb "$color5")

[Colors:Selection]
BackgroundAlternate=$(hex_to_rgb "$accent")
BackgroundNormal=$(hex_to_rgb "$accent")
DecorationFocus=$(hex_to_rgb "$accent")
DecorationHover=$(hex_to_rgb "$color5")
ForegroundActive=$(hex_to_rgb "$foreground")
ForegroundInactive=$(hex_to_rgb "$color7")
ForegroundLink=$(hex_to_rgb "$color6")
ForegroundNegative=$(hex_to_rgb "$color_red")
ForegroundNeutral=$(hex_to_rgb "$color_yellow")
ForegroundNormal=$(hex_to_rgb "$foreground")
ForegroundPositive=$(hex_to_rgb "$color_green")
ForegroundVisited=$(hex_to_rgb "$color5")

[Colors:Tooltip]
BackgroundAlternate=$(hex_to_rgb "$color8")
BackgroundNormal=$(hex_to_rgb "$background")
DecorationFocus=$(hex_to_rgb "$accent")
DecorationHover=$(hex_to_rgb "$color5")
ForegroundActive=$(hex_to_rgb "$foreground")
ForegroundInactive=$(hex_to_rgb "$color7")
ForegroundLink=$(hex_to_rgb "$color6")
ForegroundNegative=$(hex_to_rgb "$color_red")
ForegroundNeutral=$(hex_to_rgb "$color_yellow")
ForegroundNormal=$(hex_to_rgb "$foreground")
ForegroundPositive=$(hex_to_rgb "$color_green")
ForegroundVisited=$(hex_to_rgb "$color5")

[Colors:View]
BackgroundAlternate=$(hex_to_rgb "$color8")
BackgroundNormal=$(hex_to_rgb "$background")
DecorationFocus=$(hex_to_rgb "$accent")
DecorationHover=$(hex_to_rgb "$color5")
ForegroundActive=$(hex_to_rgb "$foreground")
ForegroundInactive=$(hex_to_rgb "$color7")
ForegroundLink=$(hex_to_rgb "$color6")
ForegroundNegative=$(hex_to_rgb "$color_red")
ForegroundNeutral=$(hex_to_rgb "$color_yellow")
ForegroundNormal=$(hex_to_rgb "$foreground")
ForegroundPositive=$(hex_to_rgb "$color_green")
ForegroundVisited=$(hex_to_rgb "$color5")

[Colors:Window]
BackgroundAlternate=$(hex_to_rgb "$color8")
BackgroundNormal=$(hex_to_rgb "$background")
DecorationFocus=$(hex_to_rgb "$accent")
DecorationHover=$(hex_to_rgb "$color5")
ForegroundActive=$(hex_to_rgb "$foreground")
ForegroundInactive=$(hex_to_rgb "$color7")
ForegroundLink=$(hex_to_rgb "$color6")
ForegroundNegative=$(hex_to_rgb "$color_red")
ForegroundNeutral=$(hex_to_rgb "$color_yellow")
ForegroundNormal=$(hex_to_rgb "$foreground")
ForegroundPositive=$(hex_to_rgb "$color_green")
ForegroundVisited=$(hex_to_rgb "$color5")

[General]
ColorSchemeHash=$(echo "$background$foreground$accent" | md5sum | cut -d ' ' -f 1)

[Icons]
Theme=$icon_theme

[KDE]
widgetStyle=qt6ct-style

[WM]
activeBackground=$(hex_to_rgb "$background")
activeBlend=$(hex_to_rgb "$background")
activeForeground=$(hex_to_rgb "$foreground")
inactiveBackground=$(hex_to_rgb "$color8")
inactiveBlend=$(hex_to_rgb "$color8")
inactiveForeground=$(hex_to_rgb "$color7")
EOL

echo "KDE Global Colors file has been generated at $OUTPUT_FILE"

# Make the script executable
chmod +x "$OUTPUT_FILE"
