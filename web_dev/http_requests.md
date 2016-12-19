HTTP Requests
- 
- What are some common HTTP status codes?
	- 2XX - Success
	- 3XX - Redirection
	- 4XX - Client Error
	- 5XX - Server Error
- What is the difference between a GET request and a POST request?
	- Simply put, with the GET method, the query string is transferred in the URL of the request, whereas the query string is transferred in the body of POST method requests.
- When might each be used?
	- GET simply wants to retrieve something. It is generally used for "safe actions" while POST is used for "unsafe actions."
	- POST should not be used as a crutch, and always used over GET because GET is greatly more usable: 
	
		1. GET requests can be cached
		2. GET requests can remain in the browser history
		3. GET requests can be bookmarked
		4. GET requests can be distributed & shared
		5. GET requests can be hacked

		
	
- Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
	- Small files that store information about a user that is sent to the browser to reflect already defined user prefernces. 