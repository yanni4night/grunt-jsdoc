{%macro block(_com)%}
<div>

{%for _d in _com.descs%}
<p>{{_d}}</p>
{%endfor%}


{%for k,v in _com.tags%}
<p>@{{k}} {{v}}</p>
{%endfor%}

{%if 'func'==_com.type%}
    <code>{{_com.func.name}}({{_com.func.params}})</code>
{%else%}
    <code>{{_com.attr.name}}</code>
{%endif%}
</div>
{%endmacro%}