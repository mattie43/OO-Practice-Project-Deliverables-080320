# Part One - Intro to OO 
Your classes look good. The major piece of feedback I have is around file structure.
Each class should be in its own file, and you want to follow the file structure we'll see later as we build out larger applications: projectfolder/app/models/doctor.rb and projectfolder/app/models/patient.rb
Then you can practice using require_relative to use those classes in a run.rb file 

# Part Two
You took the feedback and it looks great. The file structure makes sense. All of the deliverables are met. You also created a lists.rb file that works really well. Made testing the code very easy and simple. The greet method is an instance method and it works properly. When you are finding the doctors by speciality, you use "ele" when iterating through the array. While this is correct and works, it would be good to start naming the elements with a more descriptive name, i.e. doctor. 