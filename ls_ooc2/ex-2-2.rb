hello = "Hello"
helloWorld1 = hello +",world."
helloWorld2 = hello.concat(",world.")
helloWorld3 = hello << ",world."

p hello.object_id == helloWorld1.object_id
p hello.object_id == helloWorld2.object_id
p hello.object_id == helloWorld3.object_id
