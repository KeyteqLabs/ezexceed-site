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
    {ezcss_load(array(
        'websitetoolbar.css'
    ))}
    {ezcss(ezini('StylesheetSettings', 'EndUserCSSFileList', 'design.ini') )}

    {ezscript_require( array(
        ezini( 'JavaScriptSettings', 'JavaScriptList', 'design.ini' ),
        ezini( 'JavaScriptSettings', 'FrontendJavaScriptList', 'design.ini' ),
        'ezjsc::jquery'
    ))}

    <meta name="viewport" content="user-scalable=0;">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; user-scalable=0;">

    {literal}
    <script type="text/javascript">

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-642399-11']);
      _gaq.push(['_setDomainName', 'ezexceed.com']);
      _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();

    </script>
    {/literal}
</head>

{* To simplify IE css targeting. IE9 conforms, so threat as rest *}
<!--[if lt IE 7 ]><body class="ie6"><![endif]-->
<!--[if IE 7 ]>   <body class="ie7"><![endif]-->
<!--[if IE 8 ]>   <body class="ie8"><![endif]-->
<!--[if (gt IE 8)|!(IE)]><!--><body><!--<![endif]-->

{include uri='design:parts/website_toolbar.tpl'}

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
