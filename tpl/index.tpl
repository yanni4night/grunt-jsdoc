{%extends "parent.tpl"%}
{%block content%}
        <table width="100%" height="100%">
            <tbody>
                <tr>
                    <td width="15%" valign='top'>
                        <ul>
                            {%for e in list%}
                            <li><a href="{{e}}.html" target="contentFrame">{{e}}</a></li>
                            {%endfor%}
                        </ul>
                    </td>
                    <td><iframe src="https://github.com/yanni4night/jsdoc" frameborder="0" name="contentFrame" width="100%" height="100%"></iframe></td>
                </tr>
            </tbody>
        </table>
{%endblock%}