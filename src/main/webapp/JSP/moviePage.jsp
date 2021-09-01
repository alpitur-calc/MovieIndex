<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Morte a DB</title>
    <link rel="stylesheet" href = "/CSS/indexStyles.css">
    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href = "/CSS/moviePage.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"> type="text/javascript"</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <link href="data:image/x-icon;base64,AAABAAEAEBAAAAAAAABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAAAAAAAU1NTABcXFwAqLSsALC0rAC8qKwD3+fkAMC4uAEVFRQAyLzEAHB8dAG1vcABdWFkA7OfoAF5cXAAiICAAnpmbAMbGxgBkYF8AEhISAGVlZQDy8/EAKSkpAJOTkwBxaGUA5ubmAKqqqgAdHB4ANC4vAG5ubgD7/f0AIRweAIOFhQAhHx4ACw0NAA0NDQBeX10AYV5aAF5gYADx6+wAYmFjALOzswATERAAOzs7AI6OjgAWFhYAGBYWADEqLQAZGxwA+vn7ADMuMAAzMTAAHx8fAHBycgBdXF4ASkpEAE5LRwCLhYYAS01NAA8REQBkX14APjo5AKKgoABsZmEAkJKSAC4sKwAYGhoALi8rABoaGgAyLysAcWlqAOfl5QAMDAwAJSMjAE5MSwDu7u4AUUxLABQQDwATFBIAPDs9AM3FxgATFRUAFRUVAGpoaADXxskAWVVUAFpVVABdVFEAHxwYAG1wbgBxcXEATEdGACIfIQBzcnQA3NfYABAQEACgm5wAEhAQADs5OAA/PDgAfHZ3ALa2tgA+Pj4AZmhpAGZraQAXGRkA5eDhABkZGQAuLy0AWldSAGxsbACqqKgAc2pmADIwMAAfHRwA2c7QAEdHRwA0MTMAwb+/AAsLCwA2NDMAT0pHAHV1dQBnX1gAZ2JhAMrIyAAUFBQAPD4/ABYUFABpZ2cALSsrAIB+fgAxMSsAMS8uABsdHQDp5OUAMzIuABshIABwcHAAdGxtAP3//wBfXVwA////AA8PDwARDw8AuK2vAFFPTgB5eXkAGRQVAFRUVAAYGBgA5N/gAKyfoQBsZ2gAMCssABoZGwBra2sA+Pr6AB4ZGwBHREAAMTAyAF1YVwBdXV0AYVlaADgzMgDIw8QADxIQADo4OACLi4sAJygkABMTEwDe3t4AQTw7AFdRTABbT08AQ0JEAFhYWAAyLi0AbW5sAOXn5wAeHR8Ar6eoAOnn5wBvb28A/P7+AP7+/gCEhoYA//7+AHNwcgAMDg4A3NHTACMkIgBMS00AoZmaACclJQBQTk0AUk5NAFRNSgA8PDwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKQE6wKJ0CAivDMZ/TysaAHpyQjCnnptraWJSaQKWkwBdbDyhW2N8RqM9OHB7iHoAvC14eAppBISpLVzCSQK3AFo3PxjDpHWgMwlxhQcWWQC3G7QfWL8FgkEvB2wcmmgAC0wSklYDLpSATk0qO49TAB2sV1VKrsRDMkWxmpqCZwCyNA+GNIZSpmFfvZCPvRQAbp9tecWtJS4jIkh3SCMmACREEIETNmAha8GZqg6YsACcfm+HiroNGjV2l4MsahEAKIm1UCBlSzGOjru4jrm5ABWrJz5mOVSNlaVHtp0ejACOu46OuAYZQKhzZFGLvn0Ajoy7jI6Ojo6MubN2XpEXAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAA=" rel="icon" type="image/x-icon" />
</head>
<body>



<div class = "navbar">
    <div class = "tableNavbar">
        <table cellspacing="5" >
            <tr>
                <td> <a href = "/"> <img src="/images/mamma.png" class = "homeButton"></a></td>
                <td><input type = "text" placeholder="Search movie..." class="searchBar"></td>
                <!-- <td>   <a href="/logIn"><label class="signIn">Log In</label></a></td> -->
                <c:if test= "${ userlogged == null}">
                    <td>   <a href="/logIn"><label class="logIn">Log In</label></a></td>
                </c:if>

                <c:if test= "${ userlogged != null}">
                    <td> <div class="dropdown">
                        <button class="dropbtn">${userlogged}</button>
                        <div class="dropdown-content">
                            <a href="/userProfile">Profilo</a>
                            <a href="/doLogOut">Log out</a>
                            <a href="https://www.youtube.com/watch?v=blICnLXD65E">Sla</a>
                        </div>
                    </div></td>
                </c:if>
            </tr>
        </table>
    </div>
</div>



<div class = "mainDiv">

    <div class = "movieContainer">
        <div class = "topContainer" >
            <div class="leftPanel">
                <img src="https://lumiere-a.akamaihd.net/v1/images/au_marvel_shang-chiandthelegendofthetenrings_payoff_mov_cc4c0527.jpeg">
            </div>
            <div class = "rightPanel">
                <h1>Titolo Film</h1>
                <div class="moviePlot">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras venenatis molestie sapien sed convallis. Nunc vulputate sollicitudin nibh at eleifend. Sed vitae viverra turpis. Sed rutrum, mauris ut efficitur vehicula, mauris lorem bibendum erat, eu maximus purus orci ac justo. Mauris hendrerit sodales lectus, ac vehicula arcu iaculis eget. Mauris commodo magna interdum justo vehicula, nec condimentum neque vehicula. Aliquam egestas est quis aliquam tempus. Mauris placerat ipsum non urna interdum fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque mattis massa a aliquet tincidunt. Nam bibendum eros at metus ullamcorper, a varius velit tristique. Praesent sagittis elit vitae neque tristique, sed vestibulum justo euismod. Cras non pretium nisl.

                        Vivamus porta nisl erat, at vehicula risus maximus faucibus. Nullam non quam metus. Praesent convallis nec ligula eget sagittis. Suspendisse porta diam vel massa aliquet, vitae sollicitudin massa convallis. Donec viverra, mauris vel tempor pretium, ex odio mollis elit, ac commodo diam turpis eget magna. Nulla pharetra lacus dui, ac tincidunt elit gravida at. Nam congue fringilla elit id sagittis. Maecenas metus justo, luctus sed lacus sed, luctus dapibus ante. In eget ipsum ornare, feugiat urna ut, semper diam. Nunc posuere lectus eros, a ullamcorper mi ullamcorper sed. Donec vitae mollis sem. Pellentesque nulla nibh, pharetra porta leo a, efficitur ultricies nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

                        Fusce tristique ultrices quam id suscipit. Aliquam feugiat diam ac tortor efficitur, quis lobortis ipsum sollicitudin. In faucibus massa at imperdiet egestas. Morbi ornare enim eget justo efficitur, vitae feugiat ipsum faucibus. Phasellus sagittis sodales vestibulum. Nam leo lacus, facilisis a pretium et, euismod ac ipsum. Duis euismod libero nulla, et aliquet tortor iaculis in. Curabitur eu consequat tortor. Sed ultrices vulputate eros sit amet dapibus. Donec rutrum tristique urna ut dignissim. Quisque quis dui eu diam commodo sodales. Nullam venenatis erat in nibh fermentum, non euismod mi tincidunt. Nunc rutrum, est ac suscipit placerat, ligula neque scelerisque dolor, sed gravida est mauris nec felis. Nam quis vestibulum erat.

                        Nam scelerisque, dui vitae egestas placerat, orci massa finibus ante, eu eleifend dolor tortor at metus. Suspendisse auctor tellus eget justo pretium sodales. Mauris pellentesque sodales turpis, rutrum pretium ante vestibulum sed. Morbi turpis justo, pharetra et laoreet pulvinar, semper lobortis magna. Donec id elit elit. Duis cursus mattis libero. In ut ipsum vehicula, pellentesque odio vel, fringilla ante.

                        In hac habitasse platea dictumst. Sed nisl tortor, euismod sit amet maximus quis, laoreet ac eros. Sed ut erat quis neque rutrum aliquam vitae a turpis. Fusce facilisis bibendum dictum. Morbi consectetur eu nisl vel volutpat. Pellentesque eu velit egestas, pellentesque diam vitae, commodo tortor. Pellentesque non dolor nec elit fermentum consectetur quis non nibh. Integer quis efficitur lorem. Curabitur tristique purus feugiat consequat malesuada. Aenean dignissim quis diam quis sagittis. Donec tortor sem, ultrices pharetra mauris id, suscipit auctor ipsum. Ut mattis orci nec vestibulum interdum. Praesent suscipit mi sed lacus luctus dictum. Cras eu turpis mauris. Duis ullamcorper nibh non enim faucibus suscipit. Vestibulum lacinia dui risus, sed aliquet justo suscipit ac.</p>
                </div>
                <h3 class="overallRating">Overall Rating: *****</h3>
            </div>
        </div>

        <hr>

        <div class = "bottomContainer">
            <ul>

            </ul>
        </div>
    </div>

    <script src="/JS/moviePage.js" charset="utf-8"></script>
</div>




</body>
</html>