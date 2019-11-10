# Hunt-Exercises
# FOAR705 Proof-of-Concept: Improving The Writing and Organising of Notes on A Film

This project was created to attempt to alleviate some of the pains associated with research involving the analysis of films, which I will be undertaking in the completion of my Master of Research at Macquarie University.

My final project includes two tools:
* oTranscribe (which has been complied with npm and is being deployed using Jekyll on GitHub)(sourced from https://github.com/oTranscribe/oTranscribe), which allows you to create notes with a corresponding time stamp while viewing a video file.
* A Unix Script which will sort notes from oTranscribe (in a txt file), into separate txt files based on their inclusion of specific key words (character, narrative, themes, editing, sound, camera, lighting and colour).

To view my Proof of Concept in its entirety please see https://mq-foar705.github.io/Hunt-Exercises/

To Use the Tools Please Follow These Instructions

## oTranscribe
1. Download the oTranscibe notes template file (oTranscribe_Template.otr) from https://mq-foar705.github.io/Hunt-Exercises/
1. In a web browser, in https://mq-foar705.github.io/Hunt-Exercises/, select the link to use oTranscribe.
1. In the oTranscribe web application homepage, select the blue ‘Start transcribing’ button.
1. In the note taking page that opens, either select the blue button with an upward arrow and the text ‘Choose audio (or video) file’, navigate to the video file you wish to take notes on and select ‘Open’, OR select the blue ‘or YouTube video’ button, enter a working YouTube link and press the enter key on your keyboard.
1. Upload the template file (oTranscribe_Template.otr) to oTranscribe, by selecting the Import icon from the right hand side of the page, navigate to where the file is saved on your computer, select it and click ‘Open’. Use the enter key to make sure the text cursor is on a new line.
1. Play the video you have opened in the window in the top left hand corner of the page by either clicking the play button in this window (or in the menu bar if you have uploaded your own video) or by pressing your escape key.
1. When you reach a point of the film at which you want to take a note, pause the video by clicking the pause button in the video window (or in the menu bar if you have uploaded your own video) or by pressing the escape key on your keyboard. Then press the command and ‘j’ keys on your keyboard at the same time. This will insert a timestamp. Then, beginning with one or more of the keywords listed at the top of the template file, write your notes about this part of the video. Press enter to put the text cursor on a new line. Resume the video by following step 6.
1. Follow step 7 whenever you wish to take a note.
1. To navigate through the video, either scrub through it in the player window (or in the menu bar if you have uploaded your own video), or use the various shortcuts which can be found (and edited) by selecting the cog icon in the page’s menu bar. There are different options for different keyboards (e.g. those that do not have a row of function keys).
1. To go to the time in the video indicated by one of the timestamps (which appear in blue) click on the timestamp. 
1. When you have finished taking notes, click the Export icon on the right hand side of the page and select the file type you would like to download, which will initiate an automatic download (Please note, the connection to Google Drive function is not functional). Repeat this step until you have at least downloaded a plain text (.txt) and oTranscribe format (.otr) version of your files. 
1. Your downloads will save as ‘Transcript exported Day, Date Time GMT.filetypeyouselected’ (e.g. 'Transcript exported Sat, 09 Nov 2019 00_05_11 GMT.txt'). Rename them something appropriate for their contents, for example ‘VideoName_Notes’. Move the file to somewhere you will be able to easily find it.
1. To edit or add to your notes, re-upload them by following steps 2-5, replacing the template file in step 5 with the notes file in otr format you wish to edit. Also follow step 4 to reopen the video file the notes are related to. Then follow step 11 to download the notes, which will save as ‘Transcript exported Day, Date Time GMT.filetypeyouselected’.


## Shell Script
A capsule for my shell script has been shared with one of the convenors for this unit and the exported capsule can be found [here](https://github.com/MQ-FOAR705/Hunt-Exercises/tree/master/Proof_of_Concept__CodeOcean_Capsule)

However, to deploy for yourself independently from the capsule, 

1. Install bats-core from https://github.com/bats-core/bats-core, following the instructions for installation appropriate for what you currently have installed on your computer.
1. Using either GUI or the unix shell, create a directory with the name of the film you have created your notes for, and within that, create three directories: code, data and sorted_notes.
1. Save your notes exported from oTranscribe as a text file to ‘data’.
1. From within the unix shell, make ‘code’ the working directory and enter, ‘nano organise_notes.sh' and press enter. Within nano type the following, then save and exit,
```
# Script to sort notes in a txt file from oTranscribe into separate txt files on the basis of their mention of specific keywords
# Run this script with the filename of the notes as the argument
# Usage: bash name_of_your_notes_file.sh notesfile.txt

for keyword in colour lighting camera sound editing theme narrative character 
# Edit these words to search for different terms 
#Editing the number of terms will result in test2.bats failing.

do
grep -i $keyword $1 > sorted_notes/$keyword.txt
done
```
5. Still within 'code' as the working directory, enter in the unix shell 'nano test.bats'. What we will now write will be later used to test there is a single text file for the script created in step 4 to run on before it is executed. Enter the following, save and exit nano,
```
#!/usr/bin/env bats

@test "making sure there is a single file for the script to be run on" {
  result="$(ls -1 data/*.txt | wc -l)"
  [ "$result" -eq 1 ]
}
```
6. Still within 'code' as the working directory, enter in the unix shell 'nano test2.bats'. What we will now write will be later used to test there are eight text files produced by the script. Enter the following, save and exit nano,
```
#!/usr/bin/env bats

@test "making sure eight files were produced" {
  result="$(ls -1 sorted_notes/*.txt | wc -l)"
  [ "$result" -eq 8 ]
}
```
7. From the unix shell, make your main folder (which you named the film the notes were on) the working directory. We will now conduct the first test. In the unix shell enter,
```
/the direct path to where you have the bat-core folder/bats-core/bin/bats code/test.bats
```
This should produce a tick mark with the name or the test, and '1 test, 0 failures'

8. With the main folder still as the working directory, we will now run the script (Please note, later rerunning the script in the same directory with an updated notes file will overwrite the previous sorted notes files. Version control is recommended). In the unix shell enter,
```
bash code/organise_notes.sh data/name_of_your_notes_file.txt
```
9. To check this produced eight text files, we will now run the second test. With the main folder still as the working directory, enter the following in the unix shell
```
/the direct path to where you have the bat-core folder/bats-core/bin/bats code/test2.bats
```
This should produce a tick mark with the name or the test, and '1 test, 0 failures'
