#Script to sort notes in a txt file from oTranscribe into separate txt files on the basis of their mention of specific keywords
#Run this script with the filename of the notes as the argument
#Usage: bash organise_notes.sh notesfile.txt

for keyword in colour lighting camera sound editing theme narrative character # Edit these words to search for different terms #Editing the number of terms will result in the test2 failing.
do
grep -i $keyword $1 > ../results/$keyword.txt
done