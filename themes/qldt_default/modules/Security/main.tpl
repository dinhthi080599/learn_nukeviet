<div class="col-md-24">
    <table class="table table-bordered table-responsive" 
        style="width: 100%; word-wrap:break-word; table-layout: fixed;">
        <tr>
            <th colspan="7">Mã hóa</th>
        </tr>
        <tr>
            <th width="3%">Index</th>
            <th width="10%">Hash Function</th>
            <th width="10%">Function Name</th>
            <th width="10%">Type</th>
            <th width="10%">Clear Text</th>
            <th>Hash</th>
            <th width="5%">Describe</th>
        </tr>
        {foreach $hash_function as $key => $value}
        <tr>
            <td rowspan="{count($value.type)}" class="text-center">{$key}</td>
            <td rowspan="{count($value.type)}">
                {$value.hash_name}
            </td>
            <td rowspan="{count($value.type)}">
                {$value.function_name}
            </td>
            <td>{$value.type[1].name}</td>
            <td>{$value.type[1].clear_text}</td>
            <td><p stlye="">{$value.type[1].hash}</p></td>
            <td>{$value.type[1].describe}</td>
        {foreach $value.type as $k => $v}
            {if $k == "1"} {continue} {/if}
            <tr>
                <td>{$v.name}</td>
                <td>{$v.clear_text}</td>
                <td><p stlye="">{$v.hash}</p></td>
                <td>{$v.describe}</td>
            </tr>
        {/foreach}
        </tr>
        {/foreach}
    </table>
</div>