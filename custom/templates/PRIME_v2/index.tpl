{include file='header.tpl'}
{include file='navbar.tpl'}

<div class="home-news">
  <div class="container">
    <br />
	<div class="row">
	
	  {if isset($NEWS)}
	  <div class="col-md-8">
	    <center><h2>{$LATEST_ANNOUNCEMENTS}</h2></center>
		<hr />
		{foreach from=$NEWS item=item}
		<div class="card">
		  <div class="card-header">
			<a href="{$item.url}">{$item.title}</a>
			<span class="pull-right" data-toggle="tooltip" title="{$item.date}">{$item.time_ago}</span>
		  </div>
		  <div class="card-block">
			{$item.content}
			<hr />
			<a href="{$item.author_url}"><img class="img-circle" src="{$item.author_avatar}" /></a> <a href="{$item.author_url}" style="{$item.author_style}">{$item.author_name}</a>
		    <span class="pull-right"><a href="{$item.url}" class="btn btn-primary btn-sm">{$READ_FULL_POST} &raquo;</a></span>
		  </div>
		</div>
		{/foreach}
	  </div>
	  <div class="col-md-4">
	  
	  {else}
	  <div class="col-md-4 offset-md-4">
	  {/if}
	  
	    <center><h2>{$SOCIAL}</h2></center>
	    <hr />
		{if $TWITTER}
	    <div class="card">
		  <div class="card-block">
	        {$TWITTER}
		  </div>
		</div>
		{/if}
	    
	  </div>
	</div>
  </div>
</div>

<br />

{include file='footer.tpl'}