{%extends "parent.tpl"%}
{%block content%}
<!-- {%for m in obj._methods%}
{{comment.block(m)}}
{%endfor%}
<hr/>
{%for m in functions%}
{{comment.block(m)}}
{%endfor%} -->
<div class="contentContainer">
    <div class="summary">
        <ul class="blockList">
            <li class="blockList">
                <!-- ========== METHOD SUMMARY =========== -->
                <ul class="blockList">
                    <li class="blockList"><a name="method_summary">
                    </a>
                    <h3>Method Summary</h3>
                    <table class="overviewSummary" border="0" cellpadding="3" cellspacing="0" summary="Method Summary table, listing methods, and an explanation">
                        <tbody><tr>
                            <th class="colLast" scope="col">Method and Description</th>
                        </tr>
                        {%for m in functions%}
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
        <!-- ============ METHOD DETAIL ========== -->
        <ul class="blockList">
            <li class="blockList"><a name="method_detail">
                <!--   -->
            </a>
            <h3>Method Detail</h3>
            <ul class="blockList">
                {%for e in functions%}
                <li class="blockList">
                    <a name="{{e.func.name}}"></a>
                    <h4>{{e.func.name}}({{e.func.params}})</h4>
                    <div class="block">
                        {%for d in e.descs%}
                        {{d}}
                        {%endfor%}
                    </div>
                    <dl>
                        <dt>
                        <span class="strong">Returns:</span>
                        </dt>
                        <dd>
                        {{e.tags.return}}
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <span class="strong">Throws:</span>
                        </dt>
                        <dd>
                        {{e.tags.throws}}
                        </dd>
                    </dl>
                    <dl>
                        <dt>
                        <span class="strong">Since:</span>
                        </dt>
                        <dd>
                        {{e.tags.since}}
                        </dd>
                    </dl>
                </li>
                {%endfor%}
            </ul>
        </li>
    </ul>
</li>
</ul>
</div>
</div>
{%endblock%}