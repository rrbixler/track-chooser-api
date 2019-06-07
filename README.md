# Track Chooser API (Rails)

### App Explanation

The app makes it easy for users to keep track of their favorite tracks and lets
them store information about the tracks such as the Key Signature and the Tempo
(in beats per minute).  This information is especially helpful for DJs who are
working to put together a set and need tracks with a certain bpm.
Users can create a track resource using a form with respective inputs.
Users can update the tracks using a similar form that pre-populates with the
existing information.

Also, users are able to delete songs from their list of tracks as well as view
a list of all of their saved tracks. Only the title and artist of the tracks are
visible in this state. To see all attributes of a single track, users must view
that specific track.

 ### Project Links

  Front-End Repo: https://github.com/rrbixler/track-chooser-client
  Back-End Repo: https://github.com/rrbixler/track-chooser-api

  Front-End Deployed Site: https://rrbixler.github.io/track-chooser-client/#/sign-in
  Back-End: https://shielded-cove-86358.herokuapp.com/

 ### Technologies Used

 React, React-Bootstrap, Javascript, SCSS, Ruby on Rails

 ### Unsolved Problems that would be fixed in future iterations

I would like to have a search function that connects to a third party api (spotify)
With this search function, users can search for tracks this way instead of having
to manually enter information.

 ### Planning Documentation, Process and Problem Solving strategy
 ------Document your planning, process and problem-solving strategy
 My initial plan was to implement spotify's third party API the whole time.  However, I  ran into
 problems on Day 1 with my back-end and had to make an entire new back end repository and heroku.
 At that point I decided to put off the third-party API until after project week.  I ran into countless
 error messages while figuring out the ins and outs of react but Googling my error messages and using the
 issue cue helped me to overcome most of these roadblocks.

 One of my problems I ran into: when i originally scaffolded out my resource for tracks, I used "key" as a keyword to reopresent 'key signature' which I eventually had to change to "keysig".  This was creating errors in which the key signature of the song (represented as a number) was being read by the console as the actual data key for the track and not the representation of the key signature.

 ## Link to Entity Relationship Diagram (ERD)
 
https://imgur.com/8WJfsUE

 ## A catalog of routes (paths and methods) that the API expects

Home  ------------  /

Sign-up ----------  /sign-up

Sign-in ----------  /sign-in

Sign-out ---------  /sign-out

Change password --  /change-password

Track ------------  /tracks

Create Track -----  /track-create

Track ------------  /tracks/:id

Track Edit -------  /tracks/:id/edit

 ## Set up and installation instructions for back end application
 Just sign up in the front end and the API will be fully functional
