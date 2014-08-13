{%extends "parent.tpl"%}

{%import '_comment.tpl' as comment%}

{%block content%}
    {%for m in obj._methods%}
        {{comment.block(m)}}
    {%endfor%}
    <hr/>
    {%for m in functions%}
        {{comment.block(m)}}
    {%endfor%}
{%endblock%}