<!doctype html>
<html>
<head>
    <!-- <meta name="layout" content="main"/> This meta set a default grails layout main.gsp -->
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    
	<g:set var="now" value="${new Date()}" />

	<% out << "Hello GSP!" %>
	<br/>

	<% out << now %>
	<br/>

	<%
		def name = 'Cesar'
		def lastname = 'Maldonado'
		def count = 0
		myList = []

		myList << name
		myList << 'Mario'
		myList << 'Luis'


		out << "My name is ${name} ${lastname} <br/>"
		
		println("MyList size is ${myList.size()} <br/>")


		def alist = [fruit:'Apple', 'veggie':'Carrot']
		alist['car'] = 'Sedan'
		alist.put('book', 'Novels')
		alist << [pet:'Dog']

		println alist['fruit']
		println alist.'veggie'
		println alist.get('car')
		println alist.get('book')
		println alist.get('pet')
		
	%>

	<ul>
		<g:each var="iName" in="${myList}">
			<% count = count + 1 %>
			<li>Name # ${count}: ${iName}</li>
		</g:each>
	</ul>

	<%
		(6..10).each 
		{ 
			number -> println number
		}
	%>
	

</body>
</html>
