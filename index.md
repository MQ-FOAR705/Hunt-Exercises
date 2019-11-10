# FOAR705 Proof-of-Concept: Improving The Writing and Organising of Notes on A Film
## Emily Hunt

This Proof Of Concept technology deployment was undertaken to assist in the completion of my Master of Research thesis at Macquarie University, of which a fundamental aspect will be the analysis of animated films.

The project was developed through a number of stages, all of which are briefly outlined in the sections below.

While it underwent many changes throughout its creation, a constant theme was the issues I have organising the notes I take when watching a film.

This concern informed my final project, as it appears below, which primarily targets the creation and use stages of the data life cycle. I have deployed a Jekyll based site, complied with npm, of the open source transcription software oTranscribe (find their GitHub repository [here](https://github.com/oTranscribe/oTranscribe)). While intended for the transcription of audio/visual sources, this software proved to be ideal for my purposes in allowing the creation of notes while watching a video file that include a timestamp that can be selected to take you to that point in the video. Running this site myself through GitHub allows me to assure the tool will be available throughout the duration of the completion of my thesis, ensuring my research will not be disrupted by external factors where possible (e.g. the removal of the oTranscribe website).

Additionally, I have created a shell script that will take a txt file exported from oTranscribe, and sort its contents into separate txt files with notes related to character, narrative, themes, editing, sound, camera, lighting and colour. This will allow me to more easily find and utilise relevant notes when writing about a film. To assist the sorting process, I created a template to use in oTranscribe with instructions for note taking.

Every technical step I took in the completion of this project is detailed in my [Learning Journal](https://github.com/MQ-FOAR705/Hunt-Learning-Journal/tree/850c1b6e3e7da90878e6e5c957679a0df5459534), which also includes other activities undertaken for the unit for which this project was completed, FOAR705 Digital Humanities.

The entire GitHub repository containing the files linked to here and additional exercises can be found [here](https://github.com/MQ-FOAR705/Hunt-Exercises)

Please Note: As opposed https://readthedocs.org/, I have hosted this static site on GitHub, as that is what I am running my Proof Of Concept on.

### PROCESS

### Scoping
[Scoping Exercise 1](https://github.com/MQ-FOAR705/Hunt-Exercises/blob/master/Hunt-Scoping%20Exercise.pdf)
<br />
Firstly, a preliminary scoping exercise was intended to allow me to identify the problems I typically encounter during all stages of research (pains) and aspects of my current approaches which I could improve (gains). One specific gain I recognised that formed the basis of my final project was that it would be really useful if I had a tool that was able to link notes to a specific frame of a film. This would address the issues with my current time consuming approach of taking rough notes (frequently without a timestamp) and then having to scrub through a film to determine which part of it I was referencing in a note.
<br />
<br />
[Scoping Exercise 2](https://github.com/MQ-FOAR705/Hunt_Scoping_2_Computational_Analysis/tree/d31da158e86a974e494cdc4516c974fbd745eae4)
<br />
In the second scoping exercise, a computational anaylsis was completed on select pain relievers/gain creators. While my final version of this document focused on a gain creator related to quantitatively analysing the colours present in a film (a note taking gain creator was discussed in an earlier version), my final project will allow me to more clearly organise my observations on all aspects of a film, including colour which all the notes on are sorted into a separate txt file.
<br />
<br />

### Elaboration and Design
[Elaboration Planning](https://github.com/MQ-FOAR705/Hunt_Elaboration_1_Planning/tree/d4199f3bb947796168a9ffd85e2ab1cd65c21b86)
<br />
[Elaboration Testing](https://github.com/MQ-FOAR705/Hunt_Elaboration_2_Testing/tree/2fd260c520b51e7a68835084fe2e7d769016efa2)<br />
[Proof Of Concept Design Document](https://github.com/MQ-FOAR705/Hunt_Proof_Of_Concept_Design/tree/628f2cc3c2499c57512d2e432345cd18178d629a)

Elaboration planning involved finding some tools which could potentially relieve the pains or create the gains I had selected, with these then tested in elaboration testing.

In relation to note taking, I identified the app ClipNotes in elaboration, which in my design document I expressed the intention to use with a script analysis software, ScriptThreads. 

However, after discussions with the unit's teaching staff, I refrained from using these tools for my final project for a number of reasons. Firstly, the use of proprietary software, particularly applications from the Apple App Store (ClipNotes) could create future issues for me if I used them, as they could be removed from the store without notice and without support. Secondly, I was making my aims fit with the capabilities of the software I found, rather than the other way around. For example, ClipNotes required the creation of notes in an xml file, which then had to be imported into the app in order for them to be viewed with a film, as opposed to allowing you to take notes while watching a video which was what I wanted to do.

I was advised to look for software that was perhaps not specifically designed for what I was trying to do, but could be harnessed successfully for my purposes. Consequently, I found oTranscribe, which addressed both of the issues I had with the other tools I had found and formed the basis of my final project.
<br />

### OUTCOME

My final project involves the deployment of oTranscribe using Jekyll, allowing me to not be dependent on the availability of its website through the completion of me thesis, and a shell script to organise a notes file exported from oTranscribe into separate files dependent on their content, allowing me to more easily find and make use of my data.

For each step taken to achieve both of these aspects of my Proof of Concept, please see the Proof of Concept section of my [Learning Journal](https://github.com/MQ-FOAR705/Hunt-Learning-Journal/tree/850c1b6e3e7da90878e6e5c957679a0df5459534) 


#### Instructions
For instructions on how to use the two tools, please see [my README file](https://github.com/MQ-FOAR705/Hunt-Exercises/blob/master/README.md)

#### oTranscribe

To download the template for taking notes on oTranscribe [please click here](/Hunt-Exercises/oTranscribe_Template.otr)

[To use oTranscribe please click here](/Hunt-Exercises/docs)
Please Note: oTranscribe only works in web browsers.

#### Shell Script

The Code Ocean capsule has been shared with the convenor of this unit.

An exported version of the capsule is also available [here](https://github.com/MQ-FOAR705/Hunt-Exercises/tree/master/Proof_of_Concept__CodeOcean_Capsule)

Alternatively, to employ entirely by yourself on your own computer, see [my README file](https://github.com/MQ-FOAR705/Hunt-Exercises/blob/master/README.md)

#### License
[LICENSE](https://github.com/MQ-FOAR705/Hunt-Exercises/blob/master/LICENSE)


### QUALITY ASSURANCE & ACCEPTABILITY CRITERIA

[User Acceptance Testing Document](https://github.com/MQ-FOAR705/Hunt_Quality_Assurance_Scaffold/tree/f1e0436fd7572743f1b47f480772565995770247)

For the acceptability criteria for the performance of these tools, please see the above document.

To see the testing I conducted using these criteria, please see the Quality Assurance (Testing) subsection of the Proof of Concept section in my [Learning Journal](https://github.com/MQ-FOAR705/Hunt-Learning-Journal/tree/850c1b6e3e7da90878e6e5c957679a0df5459534) 

Automated testing has also been incorporated into the deployment instructions for my shell script, to ensure there is a single txt file for the script to be run on, and that eight txt files are created by the script.

#### Errors
The issues identified during testing which should not impact the overall use of this software include
* The links on this page produce an error when I try to click them while signed into GitHub
* The 'Open Source' link in the oTranscribe application homepage does not work. oTranscribe's GitHub repository has been linked to at the start of this site
* When exporting from oTranscribe, the link to Google Drive functionality does not work.

### CONCLUDING STATEMENTS

While writing my thesis, I will implement these tools by writing my notes on a film in oTranscribe and then sorting these using my shell script. This will be extremely valuable as it will allow me to address my current issues with determining what part of a film a note I have written is about, and let me jump straight to that point. They will also allow me to be better organise my notes and more easily find ones about specific topics, with both of the tools in combination saving me a large amount of time.

There are numerous ways this project could be built upon in the future. For example, I would like to develop a shell script that could organise the notes in the oTranscribe format file (rather than a text file) into topics in a single oTranscribe file. This would allow me to import these notes to oTranscribe and jump to specific parts of the film based on the different types of notes.
