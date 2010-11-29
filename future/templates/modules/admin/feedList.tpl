{strip}
{foreach $feeds as $key=>$item}     
  <ul class="nav">
  {if $showFeedLabels}
        <li>
         <label>Label</label>
         {$key}
      </li>   
      {/if}
      <li>
         <label>Title</label>
         <input type="text" name="moduleData[feeds][{$key}][TITLE]" value="{$item.TITLE|escape}" />
      </li>
      <li>
         <label>URL</label>
         <input type="text" name="moduleData[feeds][{$key}][BASE_URL]" value="{$item.BASE_URL|escape}" />
      </li>
      {if $showDelete}
      <li>
         <a href="{$feedURL}&amp;removeFeed={$key}" onclick="return(confirm('Are you sure you want to delete this feed?'));">Remove Feed</a>
      </li>
      {/if}
      
  </ul>
{/foreach}
{if $showNew}
  <ul class="nav">
  {if $showFeedLabels}
        <li>
         <label>Label</label>
         <input type="text" name="addFeedData[LABEL]" />
      </li>   
      {/if}
      <li>
         <label>Title</label>
         <input type="text" name="addFeedData[TITLE]" />
      </li>
      <li>
         <label>URL</label>
         <input type="text" name="addFeedData[BASE_URL]" />
      </li>
      <li>
         <input type="submit" name="addFeed" value="Add Feed" />
      </li>
      
  </ul>
{/if}
{/strip}
