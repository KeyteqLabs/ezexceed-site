{def $file = $object.data_map.image.content.original}
<img src={$file.url|ezurl}
    width="{$file.width}" height="{$file.height}"
    alt="{$object.data_map.name.content}" />
