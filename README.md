# flipperZero-studies
Learning how to create simple USB payloads using duckyScript and Powershell for the Flipper Zero!
Documenting my self-led journey in learning how to write USB payloads.

# 1. Powershell Basics and Keystroke Injection
This first folder consists of all my attempts to master Powershell and Keystroke Injections on Windows machines

**Script #1**: printingText.txt
*Self explanatory. I got text echoed on a Powershell CLI.*

**Script #2**: makingADirectory.txt
*Also self explanatory.*

**Script #3**: creatingFile.txt
*Created a new directory, made a text file and added content into it before opening up.*

**Script #4**: readAndDupe.txt
*Read the content of a file and duplicate it to another folder.*

**Script #5**: refiningReadAndDupe.txt
*This was a failed experiment, unfortunately. I had no idea that the FZ BadUSB didn't take in DEFINE and VAR in duckyScript. Sad :(*

**Script #6**: deleteFile.txt

*Deletes a file using an externally downloaded Powershell script and deletes said script after.*

*I learnt a LOT in this script. Look below.*

|: This is the pipe symbol, used to pass the output of one command to the input of another.

%{ ... }: This is an alias for ForEach-Object, and it's used to execute a script block for each object in the pipeline.

$_: This represents the current object in the pipeline, which in this case is the System.Net.WebClient object created earlier.
