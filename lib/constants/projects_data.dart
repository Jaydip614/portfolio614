
String subTitle = 'I have worked with different projects and I am displaying some of them here.';

List<Map> projects = [
  {
    'projectName': 'Expense Tracker',
    'image': "assets/images/expense-tracker.png",
    'projectType': 'Android Application',
    'isGithubLink': true,
    'isWebLink': false,
    'githubLink' : 'https://github.com/Jaydip614/expense-tracker.git',
    'webLink' : '',
    'description': "Welcome to ExpenseTracker, "
        "expense tracking app designed to help you take control of your finances. "
        "Provides overview of income and expense with seamless Dashboard, "
        "user can see their transition and customize the category of expense.",
    'tools': ['Flutter', 'Firebase', 'Bloc',],
  },
  {
    'projectName': 'Tech World',
    'image': "assets/images/uiux-design.png",
    'projectType': 'UI Design',
    'isGithubLink': false,
    'isWebLink': true,
    'githubLink' : '',
    'webLink' : 'https://www.figma.com/design/mrfDbs7VNMkGa1BNnBBj6j/TechWorld?node-id=1669-162202&t=VdLUctLa52jFKIDu-0',
    'description': "TechWorld is mobile app UI for E-commerce of laptop. "
        "Implementing figma prototyping to create dynamic carousel for product preview."
        " Also applied the best practise of color theory to create amazing app UI.",
    'tools': ['Figma', 'UI/UX', 'Prototyping'],
  },
  {
    'projectName': 'My Portfolio',
    'image': "assets/images/square-logo.png",
    'projectType': 'Web Application',
    'isGithubLink': true,
    'isWebLink': false,
    'githubLink' : 'https://github.com/Jaydip614/portfolio.git',
    'webLink' : '',
    'description': "Developed a fully responsive web app portfolio showcasing projects and skills."
        " Integrated backend services using Firebase."
        " Enhanced the app with native web functionalities through JavaScript. "
        // "providing a seamless and interactive user experience. "
    ,
    'tools': ['Flutter','Firebase', 'JavaScript'],
  },
  {
    'projectName': 'To Do App',
    'image': "assets/images/todo-app.png",
    'projectType': 'Android Application',
    'isGithubLink': true,
    'isWebLink': false,
    'githubLink' : 'https://github.com/Jaydip614/todo-app.git',
    'webLink' : '',
    'description': "This is an Task Management app. "
        "I used Hydrated bloc to store data Locally in user "
        "device with feature add task, mark as completed and delete task with user friendly UI.",
    'tools': ['Flutter', 'Hydrated Bloc'],
  },


];