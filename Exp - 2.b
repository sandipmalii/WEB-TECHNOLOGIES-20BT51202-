# b. Design a web page to store employee information including Name, Emp. Id,Department, Salary and Address on a client’s machine using a real SQL database.

Week2b.html
<!DOCTYPE html>
<html>
<head>
<title>Employee Information</title>
<link rel="stylesheet" href="week2bstyle.css">
</head>
<body>
<h1 style="color: blue">Employee Information</h1>
<form id="employeeForm">
<label for="name">Name:</label>
<input type="text" id="name" name="name" required>
<label for="empId">Employee ID:</label>
<input type="text" id="empId" name="empId" required>
<label for="department">Department:</label>
<input type="text" id="department" name="department" required>
<label for="salary">Salary:</label>
<input type="number" id="salary" name="salary" required>
<label for="address">Address:</label>
<textarea id="address" name="address" required></textarea>
<button type="submit">Save</button>
</form>
<script src="week2bj.js"></script>
</body>
</html>
Week2bstyle.css
body {
font-family: Arial, sans-serif;
margin: 20px;
}
h1 {
text-align: center;
}
form {
width: 400px;
margin: 0 auto;
}

label,
input,
textarea {
display: block;
margin-bottom: 10px;
}
input,
textarea {
width: 100%;
padding: 5px;
}
button {
margin-top: 10px;
padding: 10px;
}
button:hover {
background-color: #ddd;
}
Week2bj.js
// Assume that you have a SQL database set up in real, you need to write server-side code inorder to
handle the data storage in database.
document.getElementById('employeeForm').addEventListener('submit', function(event) {
event.preventDefault(); // Prevent form submission
// To Get form values
var name = document.getElementById('name').value;
var empId = document.getElementById('empId').value;
var department = document.getElementById('department').value;
var salary = document.getElementById('salary').value;
var address = document.getElementById('address').value;
// For the purpose of this lab, let's just log the data to the console output.
document.write('Name:', name,"<br>");
document.write('Employee ID:', empId);
document.write('Department:', department);
document.write('Salary:', salary);
document.write('Address:', address);
//To Clear form inputs
document.getElementById('name').value = '';
document.write("<br>");
document.getElementById('empId').value = '';

document.write("<br>");
document.getElementById('department').value = '';
document.write("<br>");
document.getElementById('salary').value = '';
document.write("<br>");
document.getElementById('address').value = '';
});
