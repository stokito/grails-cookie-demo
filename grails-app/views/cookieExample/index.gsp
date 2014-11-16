%{--WATCHME--}%
<html>
<head>
    <title>Working with cookies demo</title>
    <meta name="layout" content="main">
</head>

<body>
<h1>Working with cookies demo</h1>


Cookie name: username<br/>
<div>
<h3>Get cookie by standard &lt;g:cookie/&gt; tag</h3>
<pre>
    &lt;g:cookie name="username"/&gt;
</pre>
Result: <g:cookie name="username"/>
</div>
<br/>
<div>
<h3>Get cookie by &lt;g:cookie/&gt; tag</h3>
<pre>
    &lt;cookie:get name="username"/&gt;
</pre>
Result: <g:cookie name="username"/>
</div>
<br/>
<div>
<h3>Get cookie by cookieService.getCookie(String name)</h3>
Result: ${cookieValueFromService}
</div>
<br/>
<div>
<h3>Get cookie by request.getCookie(String name)</h3>
Result: ${cookieValueFromResponse}
</div>
<br/>
<div>
<h3>Set cookie by cookieService.setCookie(String name, String value, Integer maxAge)</h3>
<g:form action="setCookie1" method="post">
    <g:textField name="cookieValue" value="${g.cookie(name: 'username')}"/>
    <input type="submit">
</g:form>
</div>
<br/>
<div>
<h3>Set cookie by cookieService.setCookie(Cookie cookie)</h3>
<g:form action="setCookie2" method="post">
    <g:textField name="cookieValue" value="${g.cookie(name: 'username')}"/>
    <input type="submit">
</g:form>
</div>
<br/>
<div>
<h3>Set cookie by response.setCookie(String name, String value, Integer maxAge)</h3>
<g:form action="setCookie3" method="post">
    <g:textField name="cookieValue" value="${g.cookie(name: 'username')}"/>
    <input type="submit">
</g:form>
</div>
<br/>
<div>
<h3>Delete cookie by cookieService.deleteCookie(String name)</h3>
<g:form action="deleteCookie1" method="post">
    <input type="submit">
</g:form>
</div>
<br/>
<div>
<h3>Delete cookie by response.deleteCookie(String name)</h3>
<g:form action="deleteCookie2" method="post">
    <input type="submit">
</g:form>
</div>
<br/>
</body>
</html>