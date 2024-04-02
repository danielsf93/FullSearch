{* plugins/generic/AbcdSearch/templates/index.tpl *}

 {include file="frontend/components/header.tpl" pageTitleTranslated=$title}
 
<div class="page">
    <h1>Busca avancada</h1>
    
    {foreach from=$obterDados item=copyrightholder key=copyrightholderName}
        <h2>{$copyrightholderName}</h2>
        <ul>
            {foreach from=$copyrightholder item=book}
                <li>
                    <a href="{url page='catalog' op='book' path=['book'=>$book.publication_id]|cat}" target="_blank">
                        {$book.title}
                    </a>
                </li>
            {/foreach}
        </ul>
    {/foreach}
</div>








 {include file="frontend/components/footer.tpl"}
 