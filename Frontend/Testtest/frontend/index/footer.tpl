{* Footer menu *}
{block name='frontend_index_footer_menu'}
    
        {*include file='frontend/index/footer-navigation.tpl'*}
<div class="footersocials">Social Media</div>   	
<div class="footerinfo">
{block name='frontend_index_navigation_categories'}
    <div class="navigation--list-wrapper">
        {block name='frontend_index_navigation_categories_navigation_list'}
            <ul class="" role="menubar" itemscope="itemscope" itemtype="http://schema.org/SiteNavigationElement">
                {strip}
                    {block name='frontend_index_navigation_categories_top_home'}
                        <li class="navigation--entry{if $sCategoryCurrent == $sCategoryStart && $Controller == 'index'} is--active{/if} is--home" role="menuitem">
                            {block name='frontend_index_navigation_categories_top_link_home'}
                                <a class="navigation--link is--first{if $sCategoryCurrent == $sCategoryStart && $Controller == 'index'} active{/if}" href="{url controller='index'}" title="{s name='IndexLinkHome' namespace="frontend/index/categories_top"}{/s}" itemprop="url">
                                    <span itemprop="name">{s name='IndexLinkHome' namespace="frontend/index/categories_top"}{/s}</span>
                                </a>
                            {/block}
                        </li>
                    {/block}

                    {block name='frontend_index_navigation_categories_top_before'}{/block}

                    {foreach $sMainCategories as $sCategory}
                        {block name='frontend_index_navigation_categories_top_entry'}
                            {if !$sCategory.hideTop}
                                <li class="navigation--entry{if $sCategory.flag} is--active{/if}" role="menuitem">
                                    {block name='frontend_index_navigation_categories_top_link'}
                                        <a class="navigation--link{if $sCategory.flag} is--active{/if}" href="{$sCategory.link}" title="{$sCategory.description}" itemprop="url"{if $sCategory.external && $sCategory.externalTarget} target="{$sCategory.externalTarget}"{/if}>
                                            <span itemprop="name">{$sCategory.description}</span>
                                        </a>
                                    {/block}
                                </li>
                            {/if}
                        {/block}
                    {/foreach}
                    {block name='frontend_index_navigation_categories_top_after'}{/block}
                {/strip}
            </ul>
        {/block}
    </div>
{/block}
</div>
<div class="footercontent">
	<div class="bloc1"> 	
	 {block name="frontend_index_footer_column_information_menu"}
	    <div>
	        {block name="frontend_index_footer_column_information_menu_headline"}
	            <div >{s name="sFooterShopNavi2"}{/s}</div>
	        {/block}

	        {block name="frontend_index_footer_column_information_menu_content"}
	            <nav>
                <ul class="navigation--list" role="menu">
                    {block name="frontend_index_footer_column_information_menu_before"}{/block}
                        {foreach $sMenu.bottom2 as $item}

                            {block name="frontend_index_footer_column_information_menu_entry"}
                                <li class="navigation--entry" role="menuitem">
                                    <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                        {$item.description}
                                    </a>

                                    {* Sub categories *}
                                    {if $item.childrenCount > 0}
                                        <ul class="navigation--list is--level1" role="menu">
                                            {foreach $item.subPages as $subItem}
                                                <li class="navigation--entry" role="menuitem">
                                                    <a class="navigation--link" href="{if $subItem.link}{$subItem.link}{else}{url controller='custom' sCustom=$subItem.id title=$subItem.description}{/if}" title="{$subItem.description|escape}"{if $subItem.target} target="{$subItem.target}"{/if}>
                                                        {$subItem.description}
                                                    </a>
                                                </li>
                                            {/foreach}
                                        </ul>
                                    {/if}
                                </li>
                            {/block}
                        {/foreach}
                    {block name="frontend_index_footer_column_information_menu_after"}{/block}
                </ul>
            </nav>
        {/block}
    </div>
{/block}
</div>
<div class="bloc2">
	{namespace name="frontend/index/menu_footer"}

{* Service hotline *}
{block name="frontend_index_footer_column_service_hotline"}
    <div>
        {block name="frontend_index_footer_column_service_hotline_headline"}
            <div class="column--headline">{s name="sFooterServiceHotlineHead"}{/s}</div>
        {/block}

        {block name="frontend_index_footer_column_service_hotline_content"}
            <div class="column--content">
                <p class="column--desc">{s name="sFooterServiceHotline"}{/s}</p>
            </div>
        {/block}
    </div>
{/block}

</div>
 </div>
{/block}
