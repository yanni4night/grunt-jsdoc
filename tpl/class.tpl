{%extends "parent.tpl"%}
{%block title%}{{name}}{%endblock%}
{%block content%}
<div class="header">
    <h2 title="Class {{name}}" class="title">Class {{name}}</h2>
</div>
<div class="contentContainer">
    {%if obj._def.zuper%}
    <ul class="inheritance">
        <li>
            <ul class="inheritance">
                <li>extends:{{obj._def.zuper}}</li>
            </ul>
        </li>
    </ul>
    {%endif%}
    <div class="description">
        <ul class="blockList">
            <li class="blockList">
                <div class="block">
                    {%for m in obj._def.descs%}
                    <p>{{m}}</p>
                    {%endfor%}
                </div>
                {%if obj._def.tags.since%}
                <dl>
                    <dt><span class="strong">Since:</span></dt>
                    <dd>{{obj._def.tags.since}}</dd>
                </dl>
                {%endif%}
            </li>
        </ul>
    </div>
    <div class="summary">
        <ul class="blockList">
            <li class="blockList">
                {%if obj._def.func.name%}
                <!-- ======== CONSTRUCTOR SUMMARY ======== -->
                <ul class="blockList">
                    <li class="blockList"><a name="constructor_summary">
                        <!--   -->
                    </a>
                    <h3>Constructor Summary</h3>
                    <table class="overviewSummary" border="0" cellpadding="3" cellspacing="0" summary="Constructor Summary table, listing constructors, and an explanation">
                        <tbody><tr>
                            <th class="colLast" scope="col">Constructor and Description</th>
                        </tr>
                        <tr class="altColor">
                            <td class="colLast"><code><strong><a href="#{{obj._def.func.name}}">
                                {{obj._def.func.name}}
                            </a></strong>({{obj._def.func.params}})</code>
                        </td>
                    </tr>
                </tbody></table>
            </li>
        </ul>
        {%endif%}

{%if Object.keys(obj._attrs||{}).length%}
        <!-- ========== FIELDS SUMMARY =========== -->
        <ul class="blockList">
            <li class="blockList"><a name="method_summary">
            </a>
            <h3>Fields Summary</h3>
            <table class="overviewSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation">
                <tbody><tr>
                    <th class="colLast" scope="col">Fields and Description</th>
                </tr>
                {%for m in obj._attrs%}
                <tr class="altColor">
                    <td class="colLast"><code><strong><a href="#{{m.attr.name}}">{{m.attr.name}}</a></strong></code>
                    <div class="block">
                        {%for _d in m.descs%}
                        <p>{{_d}}</p>
                        {%endfor%}
                    </div>
                </td>
            </tr>
            {%endfor%}
        </tbody></table>
    </li>
</ul>
{%endif%}
<!-- ========== METHOD SUMMARY =========== -->
<ul class="blockList">
    <li class="blockList"><a name="method_summary">
    </a>
    <h3>Method Summary</h3>
    <table class="overviewSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation">
        <tbody><tr>
            <th class="colLast" scope="col">Method and Description</th>
        </tr>
        {%for m in obj._methods%}
        <tr class="altColor">
            <td class="colLast"><code><strong><a href="#{{m.func.name}}">{{m.func.name}}</a></strong>({{m.func.params}})</code>
            <div class="block">
                {%for _d in m.descs%}
                <p>{{_d}}</p>
                {%endfor%}
            </div>
        </td>
    </tr>
    {%endfor%}
</tbody></table>
</li>
</ul>
</li>
</ul>
</div>
<div class="details">
<ul class="blockList">
<li class="blockList">

{%if obj._def.func.name%}
<!-- ========= CONSTRUCTOR DETAIL ======== -->
<ul class="blockList">

<li class="blockList">
<a name="{{obj._def.func.name}}"></a>
<h3>Constructor Detail</h3>
<ul class="blockListLast">
    <li class="blockList">
        <h4>{{obj._def.func.name}}({{obj._def.func.params}})</h4>

        <div class="block">
            {%for e in obj._def.descs%}
            {{e}}
            {%endfor%}
        </div>
        {%set e=obj._def%}
 {%for key,tag in e.tags%}
 <dl>
    <dt>
    <span class="strong">{{key}}:</span>
    </dt>
    <dd>
    {%if !Array.isArray(tag)%}
        {{tag}}
    {%else%}
        {%for p in tag%}
        <p>{{p}}</p>
        {%endfor%}
    {%endif%}
    </dd>
</dl>
 {%endfor%}

    </li>
</ul>
</li>

</ul>
{%endif%}
<!-- ============ FIELDS DETAIL ========== -->
<ul class="blockList">
<li class="blockList"><a name="fields_detail">
</a>
<h3>Fields Detail</h3>
<ul class="blockList">
{%for e in obj._attrs%}
<li class="blockList">
    <a name="{{e.attr.name}}"></a>
    <h4>{{e.attr.name}}</h4>
    <div class="block">
{%for d in e.descs%}{{d}}{%endfor%}
    </div>
 {%for key,tag in e.tags%}
 <dl>
    <dt>
    <span class="strong">{{key}}:</span>
    </dt>
    <dd>
    {%if !Array.isArray(tag)%}
        {{tag}}
    {%else%}
        {%for p in tag%}
        <p>{{p}}</p>
        {%endfor%}
    {%endif%}
    </dd>
</dl>
 {%endfor%}
</li>
{%endfor%}
</ul>
</li>
</ul>
<!-- ============ METHOD DETAIL ========== -->
<ul class="blockList">
<li class="blockList"><a name="method_detail">
</a>
<h3>Method Detail</h3>
<ul class="blockList">
{%for e in obj._methods%}
<li class="blockList">
<a name="{{e.func.name}}"></a>
<h4>{{e.func.name}}({{e.func.params}})</h4>
<div class="block">
{%for d in e.descs%}{{d}}{%endfor%}
 </div>
 {%for key,tag in e.tags%}
 <dl>
    <dt>
    <span class="strong">{{key}}:</span>
    </dt>
    <dd>
    {%if !Array.isArray(tag)%}
        {{tag}}
    {%else%}
        {%for p in tag%}
        <p>{{p}}</p>
        {%endfor%}
    {%endif%}
    </dd>
</dl>
 {%endfor%}
<!--
{%if e.tags.param.length>0%}
<dl>
    <dt>
    <span class="strong">Params:</span>
    </dt>
    <dd>
    {%for p in e.tags.param%}
    <p>{{p}}</p>
    {%endfor%}
    </dd>
</dl>
{%endif%}

{%if e.tags.return%}
<dl>
    <dt>
    <span class="strong">Returns:</span>
    </dt>
    <dd>
    {{e.tags.return}}
    </dd>
</dl>
{%endif%}

{%if e.tags.throws.length>0%}
<dl>
    <dt>
    <span class="strong">Throws:</span>
    </dt>
    <dd>
        {%for th in e.tags.throws%}
            <p>{{th}}</p>
        {%endfor%}
    </dd>
</dl>
{%endif%}
{%if e.tags.since%}
<dl>
    <dt>
    <span class="strong">Since:</span>
    </dt>
    <dd>
    {{e.tags.since}}
    </dd>
</dl>
{%endif%} -->
</li>
{%endfor%}
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>

<p class="legalCopy"><small><font size="-1">Auto-generated by <a href="http://github.com/yanni4night/jsdoc" target="top">yjsdoc</a>.Copyright &copy; 2014, <a href="http://yanni4night.com" target="top">yanni4night.com</a>.  All rights reserved. </font></small></p>
{%endblock%}