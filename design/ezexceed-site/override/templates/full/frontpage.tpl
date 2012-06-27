{def $obj = false()}
{foreach $node.data_map.links.content.relation_list as $relation}
    {set $obj = fetch('content', 'node', hash('node_id', $relation.node_id))}
    <li>
        <a href={$obj.url_alias|ezurl} title={"Go to %name"|i18n("", "", hash("%name", $obj.data_map.link_name.content))}>{$obj.data_map.link_name.content}</a>
    </li>
{/foreach}
