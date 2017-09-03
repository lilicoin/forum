{{ content() }}

{{ form("users/logina", "method":"post", "autocomplete" : "off") }}

<h1>Users</h1>

<div>
    <label for="username">Username</label>
    {{ text_field("username", "size" : 30) }}
</div>

<div>
    <label for="password">Password</label>
    {{ password_field("password", "size" : 30) }}
</div>
{{ submit_button("Login", "class" : "btn") }}
  
<a href="/new"> create user </a>
{{ end_form() }}
