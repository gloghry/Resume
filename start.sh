#!/bin/bash

text_editor_app="gnome-text-editor"
text_editor_ops="--new-window"
pdf_viewer_app="xdg-open"

function cleanup() {
    echo -e "\n\nClosing remaining jobs..."
    for job in $(jobs -p); do
        echo -n "Killing program pid [$job]... "
        kill -9 $job
        if [ $? -eq 0 ]; then
            echo "Task killed successfully."
        else
            echo "Task could not be killed."
        fi
    done
    
    echo "Finished trying to close tasks."
}

trap cleanup INT TERM

# Start latexmk in continuous mode and run in the background
latexmk --pdf -pvc resume.tex &
LATEXMK_PID=$!
echo "latexmk (LaTeX Compiler) started with PID $LATEXMK_PID."

# Open the PDF Viewer for latexmk to edit
$pdf_viewer_app resume.pdf &
PDFVIEWER_PID=$!
echo "$dpf_viewer_app (PDF Viewer) opened in a new window."

# Open gedit in a new window
$text_editor_app $text_editor_ops resume.tex &
GEDIT_PID=$!
echo "$text_editor_app (Text Editor) opened in a new window."

# Wait a moment to ensure the applications are up
sleep 2

# Use wmctrl to get window IDs and move them
PDF_WINDOW_ID=$(xdotool search --onlyvisible --class "evince" | head -n 1)
GEDIT_WINDOW_ID=$(xdotool search --onlyvisible --class "gedit" | head -n 1)

if [ -n "$PDF_WINDOW_ID" ]; then
    echo "Moving PDF viewer window to the left side."
    wmctrl -i -r $PDF_WINDOW_ID -e 0,0,0,960,1080
else
    echo "PDF viewer window ID not found."
fi

if [ -n "$GEDIT_WINDOW_ID" ]; then
    echo "Moving gedit window to the right side."
    wmctrl -i -r $GEDIT_WINDOW_ID -e 0,960,0,960,1080
else
    echo "gedit window ID not found."
fi

echo -e "-------------------------------\n"

# Wait for latexmk to finish
wait $LATEXMK_PID

echo -e "\n-------------------------------"

exit

