1. Add an ERB template to the application. It will be called `campuses.erb` and contain 


2. Create an HTTP route that will respond with the template you created in the previous release. It will be called `/campuses` and allow the user to sort the students by campus. I'll make a drop-down picklist.

3. Allow the user to add or manipulate data in some way using a form. For example, you might add a campuses table to the database and allow the user to add additional cities to accomplish DBC world domination. It's likely that you'll want to use a POST request, since that's the best practice, but what happens if you use a GET request instead? How does the form's submission behavior change?

`@students`

SF
SD
SEA
CHI
NYC



p @students.select { |student| student['campus'] == 'SEA' }