<section class="node-children">
    {foreach $node.children as $child}
    <div>
        <a href={$child.url_alias|ezurl} title={"Go to %name"|i18n("", "", hash("%name", $child.name))}>{$child.name}</a>
        {if is_set( $child.data_map.preamble )}
            {$child.data_map.preamble.content.output.output_text}
        {/if}
    </div>
    {/foreach}
</section>
