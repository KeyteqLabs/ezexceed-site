{def $file = $object.data_map.image.content.reference}
<img src={$file.url|ezurl}
    width="{$file.width}" height="{$file.height}"
    alt="{$object.data_map.name.content}" />
