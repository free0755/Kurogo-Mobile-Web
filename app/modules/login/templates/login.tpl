{include file="findInclude:modules/login/templates/header.tpl"}

{if $showMessage}
{include file="findInclude:modules/login/templates/include/message.tpl"}
{else}
{include file="findInclude:modules/login/templates/include/loginForm.tpl"}
{/if}

{include file="findInclude:modules/login/templates/footer.tpl"}
