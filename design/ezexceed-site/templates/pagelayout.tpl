<!DOCTYPE html>
<html>
<head>
    {def $user_hash = concat( $current_user.role_id_list|implode( ',' ), ',', $current_user.limited_assignment_value_list|implode( ',' ) )}

    {def $pagedata         = ezpagedata()
         $locales          = fetch( 'content', 'translation_list' )
         $pagedesign       = $pagedata.template_look
         $current_node_id  = $pagedata.node_id}

    {include uri='design:page_head.tpl'}
    {include uri='design:page_head_script.tpl'}

    {ezcss_require(ezini('StylesheetSettings', 'AdminCSSFileList', 'design.ini') )}
    {ezcss_load()}
    {ezcss(ezini('StylesheetSettings', 'EndUserCSSFileList', 'design.ini') )}

    {ezscript_require( array(
        ezini( 'JavaScriptSettings', 'JavaScriptList', 'design.ini' ),
        ezini( 'JavaScriptSettings', 'FrontendJavaScriptList', 'design.ini' ),
        'ezjsc::jquery'
    ))}

    <meta name="viewport" content="user-scalable=0;">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; user-scalable=0;">
</head>

{* To simplify IE css targeting. IE9 conforms, so threat as rest *}
<!--[if lt IE 7 ]><body class="ie6"><![endif]-->
<!--[if IE 7 ]>   <body class="ie7"><![endif]-->
<!--[if IE 8 ]>   <body class="ie8"><![endif]-->
<!--[if (gt IE 8)|!(IE)]><!--><body><!--<![endif]-->

{include uri='design:page_toolbar.tpl'}

<div id="page" class="clear">
    <div id="content">
        <img src={"logo.png"|ezimage} />
        {$module_result.content}
    </div>
</div>

{* This comment will be replaced with actual debug report (if debug is on). *}
<!--DEBUG_REPORT-->

</body>
</html>
