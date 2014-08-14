{%extends "parent.tpl"%}
{%block content%}
        <table width="100%" height="100%">
            <tbody>
                <tr>
                    <td width="15%" valign='top'>
                        <div class="indexContainer">
                            <ul>
                                <li>
                                    <h2>{{title}}</h2>
                                </li>
                                {%for e in list%}
                                <li>
                                    <a href="{{e}}.html" target="contentFrame">{{e}}
                                    </a>
                                </li>
                                {%endfor%}
                            </ul>
                        </div>
                    </td>
                    <td><iframe src="{{functions}}.html" frameborder="0" name="contentFrame" width="100%" height="100%"></iframe></td>
                </tr>
            </tbody>
        </table>
{%endblock%}