<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Morte a DB</title>
    <link rel="stylesheet" href = "/CSS/indexStyles.css">
    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href = "/CSS/dropdown.css">
    <link rel="stylesheet" href = "/CSS/moviePage.css">

    <link href="data:image/x-icon;base64,AAABAAEAEBAAAAAAAABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAAAAAAAU1NTABcXFwAqLSsALC0rAC8qKwD3+fkAMC4uAEVFRQAyLzEAHB8dAG1vcABdWFkA7OfoAF5cXAAiICAAnpmbAMbGxgBkYF8AEhISAGVlZQDy8/EAKSkpAJOTkwBxaGUA5ubmAKqqqgAdHB4ANC4vAG5ubgD7/f0AIRweAIOFhQAhHx4ACw0NAA0NDQBeX10AYV5aAF5gYADx6+wAYmFjALOzswATERAAOzs7AI6OjgAWFhYAGBYWADEqLQAZGxwA+vn7ADMuMAAzMTAAHx8fAHBycgBdXF4ASkpEAE5LRwCLhYYAS01NAA8REQBkX14APjo5AKKgoABsZmEAkJKSAC4sKwAYGhoALi8rABoaGgAyLysAcWlqAOfl5QAMDAwAJSMjAE5MSwDu7u4AUUxLABQQDwATFBIAPDs9AM3FxgATFRUAFRUVAGpoaADXxskAWVVUAFpVVABdVFEAHxwYAG1wbgBxcXEATEdGACIfIQBzcnQA3NfYABAQEACgm5wAEhAQADs5OAA/PDgAfHZ3ALa2tgA+Pj4AZmhpAGZraQAXGRkA5eDhABkZGQAuLy0AWldSAGxsbACqqKgAc2pmADIwMAAfHRwA2c7QAEdHRwA0MTMAwb+/AAsLCwA2NDMAT0pHAHV1dQBnX1gAZ2JhAMrIyAAUFBQAPD4/ABYUFABpZ2cALSsrAIB+fgAxMSsAMS8uABsdHQDp5OUAMzIuABshIABwcHAAdGxtAP3//wBfXVwA////AA8PDwARDw8AuK2vAFFPTgB5eXkAGRQVAFRUVAAYGBgA5N/gAKyfoQBsZ2gAMCssABoZGwBra2sA+Pr6AB4ZGwBHREAAMTAyAF1YVwBdXV0AYVlaADgzMgDIw8QADxIQADo4OACLi4sAJygkABMTEwDe3t4AQTw7AFdRTABbT08AQ0JEAFhYWAAyLi0AbW5sAOXn5wAeHR8Ar6eoAOnn5wBvb28A/P7+AP7+/gCEhoYA//7+AHNwcgAMDg4A3NHTACMkIgBMS00AoZmaACclJQBQTk0AUk5NAFRNSgA8PDwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKQE6wKJ0CAivDMZ/TysaAHpyQjCnnptraWJSaQKWkwBdbDyhW2N8RqM9OHB7iHoAvC14eAppBISpLVzCSQK3AFo3PxjDpHWgMwlxhQcWWQC3G7QfWL8FgkEvB2wcmmgAC0wSklYDLpSATk0qO49TAB2sV1VKrsRDMkWxmpqCZwCyNA+GNIZSpmFfvZCPvRQAbp9tecWtJS4jIkh3SCMmACREEIETNmAha8GZqg6YsACcfm+HiroNGjV2l4MsahEAKIm1UCBlSzGOjru4jrm5ABWrJz5mOVSNlaVHtp0ejACOu46OuAYZQKhzZFGLvn0Ajoy7jI6Ojo6MubN2XpEXAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAA=" rel="icon" type="image/x-icon" />
</head>
<body>



<div class = "navbar">
    <div class = "tableNavbar">
        <table cellspacing="5" >
            <tr>
                <td> <a href = "/index.html"> <img src="/images/mamma.png" class = "homeButton"></a></td>
                <td><input type = "text" placeholder="Search movie..." class="searchBar"></td>
                <td>   <a href="/HTML/signIn.html"><label class="signIn">Log In</label></a></td>
                <td> <div class="dropdown">
                    <button class="dropbtn">Nome Utente</button>
                    <div class="dropdown-content">
                        <a href="/HTML/userProfile.html">Profilo</a>
                        <a href="#">Log out</a>
                        <a href="https://www.youtube.com/watch?v=blICnLXD65E">Sla</a>
                    </div>
                </div></td>
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
                <li>
                    <div class = "review">
                        <div class = "ratingAndAuthor">
                            <div class="author">Nome RecensoreLunghissimissimo</div>
                            <div class = "rating">*****</div>
                        </div>
                        <div class = "reviewContent"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non risus odio. Donec elementum hendrerit sapien, ut vulputate arcu ultrices nec. Duis ut mattis ipsum. Maecenas dictum libero eget massa ornare ultricies eu et sem. Duis maximus tortor sit amet sem euismod, vel consequat nisi congue. Praesent dignissim convallis sem. Vivamus facilisis aliquam diam, at feugiat mi. Morbi tempor arcu in interdum semper. Sed consequat arcu sit amet nibh aliquet semper. Pellentesque vitae facilisis diam, placerat dapibus nunc. Donec ullamcorper dui lorem. Mauris non aliquet risus. Aliquam eu tortor enim. Donec nec molestie erat. Suspendisse laoreet fringilla lacus, sit amet ultrices est condimentum non. Nullam sodales neque nisi, et eleifend felis convallis sed.

                            Phasellus leo nisi, condimentum sed sollicitudin vel, laoreet finibus nisl. Pellentesque gravida ante eu purus sollicitudin, nec eleifend velit vehicula. Quisque vitae ex hendrerit, ultricies libero nec, porta velit. Suspendisse consectetur et odio nec iaculis. Integer ut posuere ipsum. Sed orci purus, egestas eget condimentum in, sollicitudin eu nulla. Vestibulum vel sem pellentesque, feugiat nulla non, laoreet dui. Ut ut tellus fringilla, porta ipsum non, dignissim sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sed urna ornare, posuere risus eu, ultricies metus. Suspendisse tristique lacus nec vulputate consectetur. Fusce a vulputate turpis, quis varius mi. Aliquam ut consequat nunc. Nullam eget molestie diam.

                            Aliquam et mattis magna. Phasellus in placerat felis. Suspendisse potenti. Vivamus sodales libero eget vestibulum consectetur. Mauris sit amet finibus erat. Etiam efficitur orci a elit ultrices porta nec non odio. Cras quis consequat urna. Etiam augue tortor, hendrerit consequat tristique fermentum, sollicitudin vel sem. Sed sapien massa, pellentesque et faucibus vitae, fringilla et odio. Suspendisse ullamcorper, dolor nec accumsan molestie, libero mauris pretium nisi, ac molestie purus risus in elit.

                            Aliquam ante quam, ornare ut tincidunt non, pulvinar non lorem. Cras non vestibulum arcu. Mauris tempor dignissim augue, laoreet rutrum ligula finibus in. Mauris ut lacus gravida, suscipit augue sed, feugiat urna. Pellentesque condimentum porta metus et faucibus. Fusce consequat dui in nibh cursus mollis in nec nunc. Sed fringilla libero magna, et tincidunt risus accumsan ac. Aenean hendrerit laoreet auctor. Duis at tempus neque. Fusce blandit, velit eget mattis semper, nisi metus maximus urna, quis sagittis mi massa sed lectus. Cras mollis augue a bibendum scelerisque. Sed vel elementum lectus.

                            Vestibulum ut dolor eu neque egestas vehicula vel id mi. Phasellus non turpis rhoncus, consectetur lorem sit amet, faucibus metus. Mauris feugiat scelerisque elementum. Nulla rhoncus lacus non urna mollis iaculis. Suspendisse tincidunt dui et dapibus vulputate. Fusce pretium, nulla lobortis facilisis sodales, felis neque porttitor nunc, a accumsan massa dolor eget nisl. Vestibulum dignissim et dolor hendrerit auctor. Pellentesque at molestie tellus. Cras eu nunc in neque convallis molestie eu eu mauris. Nam non accumsan quam.</p></div>
                        <div class = "date">12/03/21</div>
                    </div>
                </li>

                <li>
                    <div class = "review">
                        <div class = "ratingAndAuthor">
                            <div class="author">Nome Recensore</div>
                            <div class = "rating">*****</div>
                        </div>
                        <div class = "reviewContent"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non risus odio. Donec elementum hendrerit sapien, ut vulputate arcu ultrices nec. Duis ut mattis ipsum. Maecenas dictum libero eget massa ornare ultricies eu et sem. Duis maximus tortor sit amet sem euismod, vel consequat nisi congue. Praesent dignissim convallis sem. Vivamus facilisis aliquam diam, at feugiat mi. Morbi tempor arcu in interdum semper. Sed consequat arcu sit amet nibh aliquet semper. Pellentesque vitae facilisis diam, placerat dapibus nunc. Donec ullamcorper dui lorem. Mauris non aliquet risus. Aliquam eu tortor enim. Donec nec molestie erat. Suspendisse laoreet fringilla lacus, sit amet ultrices est condimentum non. Nullam sodales neque nisi, et eleifend felis convallis sed.

                            Phasellus leo nisi, condimentum sed sollicitudin vel, laoreet finibus nisl. Pellentesque gravida ante eu purus sollicitudin, nec eleifend velit vehicula. Quisque vitae ex hendrerit, ultricies libero nec, porta velit. Suspendisse consectetur et odio nec iaculis. Integer ut posuere ipsum. Sed orci purus, egestas eget condimentum in, sollicitudin eu nulla. Vestibulum vel sem pellentesque, feugiat nulla non, laoreet dui. Ut ut tellus fringilla, porta ipsum non, dignissim sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sed urna ornare, posuere risus eu, ultricies metus. Suspendisse tristique lacus nec vulputate consectetur. Fusce a vulputate turpis, quis varius mi. Aliquam ut consequat nunc. Nullam eget molestie diam.

                            Aliquam et mattis magna. Phasellus in placerat felis. Suspendisse potenti. Vivamus sodales libero eget vestibulum consectetur. Mauris sit amet finibus erat. Etiam efficitur orci a elit ultrices porta nec non odio. Cras quis consequat urna. Etiam augue tortor, hendrerit consequat tristique fermentum, sollicitudin vel sem. Sed sapien massa, pellentesque et faucibus vitae, fringilla et odio. Suspendisse ullamcorper, dolor nec accumsan molestie, libero mauris pretium nisi, ac molestie purus risus in elit.

                            Aliquam ante quam, ornare ut tincidunt non, pulvinar non lorem. Cras non vestibulum arcu. Mauris tempor dignissim augue, laoreet rutrum ligula finibus in. Mauris ut lacus gravida, suscipit augue sed, feugiat urna. Pellentesque condimentum porta metus et faucibus. Fusce consequat dui in nibh cursus mollis in nec nunc. Sed fringilla libero magna, et tincidunt risus accumsan ac. Aenean hendrerit laoreet auctor. Duis at tempus neque. Fusce blandit, velit eget mattis semper, nisi metus maximus urna, quis sagittis mi massa sed lectus. Cras mollis augue a bibendum scelerisque. Sed vel elementum lectus.

                            Vestibulum ut dolor eu neque egestas vehicula vel id mi. Phasellus non turpis rhoncus, consectetur lorem sit amet, faucibus metus. Mauris feugiat scelerisque elementum. Nulla rhoncus lacus non urna mollis iaculis. Suspendisse tincidunt dui et dapibus vulputate. Fusce pretium, nulla lobortis facilisis sodales, felis neque porttitor nunc, a accumsan massa dolor eget nisl. Vestibulum dignissim et dolor hendrerit auctor. Pellentesque at molestie tellus. Cras eu nunc in neque convallis molestie eu eu mauris. Nam non accumsan quam.</p></div>
                        <div class = "date">12/03/21</div>
                    </div>
                </li>

                <li>
                    <div class = "review">
                        <div class = "ratingAndAuthor">
                            <div class="author">Nome Recensore</div>
                            <div class = "rating">*****</div>
                        </div>
                        <div class = "reviewContent"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non risus odio. Donec elementum hendrerit sapien, ut vulputate arcu ultrices nec. Duis ut mattis ipsum. Maecenas dictum libero eget massa ornare ultricies eu et sem. Duis maximus tortor sit amet sem euismod, vel consequat nisi congue. Praesent dignissim convallis sem. Vivamus facilisis aliquam diam, at feugiat mi. Morbi tempor arcu in interdum semper. Sed consequat arcu sit amet nibh aliquet semper. Pellentesque vitae facilisis diam, placerat dapibus nunc. Donec ullamcorper dui lorem. Mauris non aliquet risus. Aliquam eu tortor enim. Donec nec molestie erat. Suspendisse laoreet fringilla lacus, sit amet ultrices est condimentum non. Nullam sodales neque nisi, et eleifend felis convallis sed.

                            Phasellus leo nisi, condimentum sed sollicitudin vel, laoreet finibus nisl. Pellentesque gravida ante eu purus sollicitudin, nec eleifend velit vehicula. Quisque vitae ex hendrerit, ultricies libero nec, porta velit. Suspendisse consectetur et odio nec iaculis. Integer ut posuere ipsum. Sed orci purus, egestas eget condimentum in, sollicitudin eu nulla. Vestibulum vel sem pellentesque, feugiat nulla non, laoreet dui. Ut ut tellus fringilla, porta ipsum non, dignissim sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sed urna ornare, posuere risus eu, ultricies metus. Suspendisse tristique lacus nec vulputate consectetur. Fusce a vulputate turpis, quis varius mi. Aliquam ut consequat nunc. Nullam eget molestie diam.

                            Aliquam et mattis magna. Phasellus in placerat felis. Suspendisse potenti. Vivamus sodales libero eget vestibulum consectetur. Mauris sit amet finibus erat. Etiam efficitur orci a elit ultrices porta nec non odio. Cras quis consequat urna. Etiam augue tortor, hendrerit consequat tristique fermentum, sollicitudin vel sem. Sed sapien massa, pellentesque et faucibus vitae, fringilla et odio. Suspendisse ullamcorper, dolor nec accumsan molestie, libero mauris pretium nisi, ac molestie purus risus in elit.

                            Aliquam ante quam, ornare ut tincidunt non, pulvinar non lorem. Cras non vestibulum arcu. Mauris tempor dignissim augue, laoreet rutrum ligula finibus in. Mauris ut lacus gravida, suscipit augue sed, feugiat urna. Pellentesque condimentum porta metus et faucibus. Fusce consequat dui in nibh cursus mollis in nec nunc. Sed fringilla libero magna, et tincidunt risus accumsan ac. Aenean hendrerit laoreet auctor. Duis at tempus neque. Fusce blandit, velit eget mattis semper, nisi metus maximus urna, quis sagittis mi massa sed lectus. Cras mollis augue a bibendum scelerisque. Sed vel elementum lectus.

                            Vestibulum ut dolor eu neque egestas vehicula vel id mi. Phasellus non turpis rhoncus, consectetur lorem sit amet, faucibus metus. Mauris feugiat scelerisque elementum. Nulla rhoncus lacus non urna mollis iaculis. Suspendisse tincidunt dui et dapibus vulputate. Fusce pretium, nulla lobortis facilisis sodales, felis neque porttitor nunc, a accumsan massa dolor eget nisl. Vestibulum dignissim et dolor hendrerit auctor. Pellentesque at molestie tellus. Cras eu nunc in neque convallis molestie eu eu mauris. Nam non accumsan quam.</p></div>
                        <div class = "date">12/03/21</div>
                    </div>
                </li>

                <li>
                    <div class = "review">
                        <div class = "ratingAndAuthor">
                            <div class="author">Nome Recensore</div>
                            <div class = "rating">*****</div>
                        </div>
                        <div class = "reviewContent"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non risus odio. Donec elementum hendrerit sapien, ut vulputate arcu ultrices nec. Duis ut mattis ipsum. Maecenas dictum libero eget massa ornare ultricies eu et sem. Duis maximus tortor sit amet sem euismod, vel consequat nisi congue. Praesent dignissim convallis sem. Vivamus facilisis aliquam diam, at feugiat mi. Morbi tempor arcu in interdum semper. Sed consequat arcu sit amet nibh aliquet semper. Pellentesque vitae facilisis diam, placerat dapibus nunc. Donec ullamcorper dui lorem. Mauris non aliquet risus. Aliquam eu tortor enim. Donec nec molestie erat. Suspendisse laoreet fringilla lacus, sit amet ultrices est condimentum non. Nullam sodales neque nisi, et eleifend felis convallis sed.

                            Phasellus leo nisi, condimentum sed sollicitudin vel, laoreet finibus nisl. Pellentesque gravida ante eu purus sollicitudin, nec eleifend velit vehicula. Quisque vitae ex hendrerit, ultricies libero nec, porta velit. Suspendisse consectetur et odio nec iaculis. Integer ut posuere ipsum. Sed orci purus, egestas eget condimentum in, sollicitudin eu nulla. Vestibulum vel sem pellentesque, feugiat nulla non, laoreet dui. Ut ut tellus fringilla, porta ipsum non, dignissim sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sed urna ornare, posuere risus eu, ultricies metus. Suspendisse tristique lacus nec vulputate consectetur. Fusce a vulputate turpis, quis varius mi. Aliquam ut consequat nunc. Nullam eget molestie diam.

                            Aliquam et mattis magna. Phasellus in placerat felis. Suspendisse potenti. Vivamus sodales libero eget vestibulum consectetur. Mauris sit amet finibus erat. Etiam efficitur orci a elit ultrices porta nec non odio. Cras quis consequat urna. Etiam augue tortor, hendrerit consequat tristique fermentum, sollicitudin vel sem. Sed sapien massa, pellentesque et faucibus vitae, fringilla et odio. Suspendisse ullamcorper, dolor nec accumsan molestie, libero mauris pretium nisi, ac molestie purus risus in elit.

                            Aliquam ante quam, ornare ut tincidunt non, pulvinar non lorem. Cras non vestibulum arcu. Mauris tempor dignissim augue, laoreet rutrum ligula finibus in. Mauris ut lacus gravida, suscipit augue sed, feugiat urna. Pellentesque condimentum porta metus et faucibus. Fusce consequat dui in nibh cursus mollis in nec nunc. Sed fringilla libero magna, et tincidunt risus accumsan ac. Aenean hendrerit laoreet auctor. Duis at tempus neque. Fusce blandit, velit eget mattis semper, nisi metus maximus urna, quis sagittis mi massa sed lectus. Cras mollis augue a bibendum scelerisque. Sed vel elementum lectus.

                            Vestibulum ut dolor eu neque egestas vehicula vel id mi. Phasellus non turpis rhoncus, consectetur lorem sit amet, faucibus metus. Mauris feugiat scelerisque elementum. Nulla rhoncus lacus non urna mollis iaculis. Suspendisse tincidunt dui et dapibus vulputate. Fusce pretium, nulla lobortis facilisis sodales, felis neque porttitor nunc, a accumsan massa dolor eget nisl. Vestibulum dignissim et dolor hendrerit auctor. Pellentesque at molestie tellus. Cras eu nunc in neque convallis molestie eu eu mauris. Nam non accumsan quam.</p></div>
                        <div class = "date">12/03/21</div>
                    </div>
                </li>

                <li>
                    <div class = "review">
                        <div class = "ratingAndAuthor">
                            <div class="author">Nome Recensore</div>
                            <div class = "rating">*****</div>
                        </div>
                        <div class = "reviewContent"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non risus odio. Donec elementum hendrerit sapien, ut vulputate arcu ultrices nec. Duis ut mattis ipsum. Maecenas dictum libero eget massa ornare ultricies eu et sem. Duis maximus tortor sit amet sem euismod, vel consequat nisi congue. Praesent dignissim convallis sem. Vivamus facilisis aliquam diam, at feugiat mi. Morbi tempor arcu in interdum semper. Sed consequat arcu sit amet nibh aliquet semper. Pellentesque vitae facilisis diam, placerat dapibus nunc. Donec ullamcorper dui lorem. Mauris non aliquet risus. Aliquam eu tortor enim. Donec nec molestie erat. Suspendisse laoreet fringilla lacus, sit amet ultrices est condimentum non. Nullam sodales neque nisi, et eleifend felis convallis sed.

                            Phasellus leo nisi, condimentum sed sollicitudin vel, laoreet finibus nisl. Pellentesque gravida ante eu purus sollicitudin, nec eleifend velit vehicula. Quisque vitae ex hendrerit, ultricies libero nec, porta velit. Suspendisse consectetur et odio nec iaculis. Integer ut posuere ipsum. Sed orci purus, egestas eget condimentum in, sollicitudin eu nulla. Vestibulum vel sem pellentesque, feugiat nulla non, laoreet dui. Ut ut tellus fringilla, porta ipsum non, dignissim sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sed urna ornare, posuere risus eu, ultricies metus. Suspendisse tristique lacus nec vulputate consectetur. Fusce a vulputate turpis, quis varius mi. Aliquam ut consequat nunc. Nullam eget molestie diam.

                            Aliquam et mattis magna. Phasellus in placerat felis. Suspendisse potenti. Vivamus sodales libero eget vestibulum consectetur. Mauris sit amet finibus erat. Etiam efficitur orci a elit ultrices porta nec non odio. Cras quis consequat urna. Etiam augue tortor, hendrerit consequat tristique fermentum, sollicitudin vel sem. Sed sapien massa, pellentesque et faucibus vitae, fringilla et odio. Suspendisse ullamcorper, dolor nec accumsan molestie, libero mauris pretium nisi, ac molestie purus risus in elit.

                            Aliquam ante quam, ornare ut tincidunt non, pulvinar non lorem. Cras non vestibulum arcu. Mauris tempor dignissim augue, laoreet rutrum ligula finibus in. Mauris ut lacus gravida, suscipit augue sed, feugiat urna. Pellentesque condimentum porta metus et faucibus. Fusce consequat dui in nibh cursus mollis in nec nunc. Sed fringilla libero magna, et tincidunt risus accumsan ac. Aenean hendrerit laoreet auctor. Duis at tempus neque. Fusce blandit, velit eget mattis semper, nisi metus maximus urna, quis sagittis mi massa sed lectus. Cras mollis augue a bibendum scelerisque. Sed vel elementum lectus.

                            Vestibulum ut dolor eu neque egestas vehicula vel id mi. Phasellus non turpis rhoncus, consectetur lorem sit amet, faucibus metus. Mauris feugiat scelerisque elementum. Nulla rhoncus lacus non urna mollis iaculis. Suspendisse tincidunt dui et dapibus vulputate. Fusce pretium, nulla lobortis facilisis sodales, felis neque porttitor nunc, a accumsan massa dolor eget nisl. Vestibulum dignissim et dolor hendrerit auctor. Pellentesque at molestie tellus. Cras eu nunc in neque convallis molestie eu eu mauris. Nam non accumsan quam.</p></div>
                        <div class = "date">12/03/21</div>
                    </div>
                </li>

                <li>
                    <div class = "review">
                        <div class = "ratingAndAuthor">
                            <div class="author">Nome Recensore</div>
                            <div class = "rating">*****</div>
                        </div>
                        <div class = "reviewContent"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non risus odio. Donec elementum hendrerit sapien, ut vulputate arcu ultrices nec. Duis ut mattis ipsum. Maecenas dictum libero eget massa ornare ultricies eu et sem. Duis maximus tortor sit amet sem euismod, vel consequat nisi congue. Praesent dignissim convallis sem. Vivamus facilisis aliquam diam, at feugiat mi. Morbi tempor arcu in interdum semper. Sed consequat arcu sit amet nibh aliquet semper. Pellentesque vitae facilisis diam, placerat dapibus nunc. Donec ullamcorper dui lorem. Mauris non aliquet risus. Aliquam eu tortor enim. Donec nec molestie erat. Suspendisse laoreet fringilla lacus, sit amet ultrices est condimentum non. Nullam sodales neque nisi, et eleifend felis convallis sed.

                            Phasellus leo nisi, condimentum sed sollicitudin vel, laoreet finibus nisl. Pellentesque gravida ante eu purus sollicitudin, nec eleifend velit vehicula. Quisque vitae ex hendrerit, ultricies libero nec, porta velit. Suspendisse consectetur et odio nec iaculis. Integer ut posuere ipsum. Sed orci purus, egestas eget condimentum in, sollicitudin eu nulla. Vestibulum vel sem pellentesque, feugiat nulla non, laoreet dui. Ut ut tellus fringilla, porta ipsum non, dignissim sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sed urna ornare, posuere risus eu, ultricies metus. Suspendisse tristique lacus nec vulputate consectetur. Fusce a vulputate turpis, quis varius mi. Aliquam ut consequat nunc. Nullam eget molestie diam.

                            Aliquam et mattis magna. Phasellus in placerat felis. Suspendisse potenti. Vivamus sodales libero eget vestibulum consectetur. Mauris sit amet finibus erat. Etiam efficitur orci a elit ultrices porta nec non odio. Cras quis consequat urna. Etiam augue tortor, hendrerit consequat tristique fermentum, sollicitudin vel sem. Sed sapien massa, pellentesque et faucibus vitae, fringilla et odio. Suspendisse ullamcorper, dolor nec accumsan molestie, libero mauris pretium nisi, ac molestie purus risus in elit.

                            Aliquam ante quam, ornare ut tincidunt non, pulvinar non lorem. Cras non vestibulum arcu. Mauris tempor dignissim augue, laoreet rutrum ligula finibus in. Mauris ut lacus gravida, suscipit augue sed, feugiat urna. Pellentesque condimentum porta metus et faucibus. Fusce consequat dui in nibh cursus mollis in nec nunc. Sed fringilla libero magna, et tincidunt risus accumsan ac. Aenean hendrerit laoreet auctor. Duis at tempus neque. Fusce blandit, velit eget mattis semper, nisi metus maximus urna, quis sagittis mi massa sed lectus. Cras mollis augue a bibendum scelerisque. Sed vel elementum lectus.

                            Vestibulum ut dolor eu neque egestas vehicula vel id mi. Phasellus non turpis rhoncus, consectetur lorem sit amet, faucibus metus. Mauris feugiat scelerisque elementum. Nulla rhoncus lacus non urna mollis iaculis. Suspendisse tincidunt dui et dapibus vulputate. Fusce pretium, nulla lobortis facilisis sodales, felis neque porttitor nunc, a accumsan massa dolor eget nisl. Vestibulum dignissim et dolor hendrerit auctor. Pellentesque at molestie tellus. Cras eu nunc in neque convallis molestie eu eu mauris. Nam non accumsan quam.</p></div>
                        <div class = "date">12/03/21</div>
                    </div>
                </li>


            </ul>
        </div>
    </div>

    <script src="/JS/moviePage.js" charset="utf-8"></script>
</div>




</body>
</html>