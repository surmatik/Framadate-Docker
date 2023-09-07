<div id="comments_list">
    <form action="{if isset($admin) && $admin}{poll_url id=$admin_poll_id admin=true}{else}{poll_url id=$poll_id}{/if}" method="POST">
    {if $comments|count > 0}
        <h3>{__('Comments', 'Comments of polled people')}</h3>
        {foreach $comments as $comment}
            <div class="comment">
                {if isset($admin) && $admin && !$expired}
                    <button type="submit" name="delete_comment" value="{$comment->id|html}" class="btn btn-link" title="{__('Comments', 'Remove the comment')}"><span class="glyphicon glyphicon-remove text-danger"></span><span class="sr-only">{__('Generic', 'Remove')}</span></button>
                {/if}
                <div class="comment-image">
                    <img class="person-placeholder" src="./images/person-placeholder.png">
                </div>
                <div class="comment-text">
                    <b>{$comment->name|html}</b>&nbsp;
                    <span class="comment_date">{$comment->date|intl_date_format:$date_format['txt_datetime_short']}</span> <br>
                    <span>{$comment->comment|escape|nl2br}</span>
                </div>
            </div>
        {/foreach}
    {/if}
    </form>
    <div id="comments_alerts"></div>
</div>
