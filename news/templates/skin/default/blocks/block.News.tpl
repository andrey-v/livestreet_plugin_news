<style type="text/css">
    .news-block div[id^="wall-item-"]:nth-child(2) .comment{
        background:  red;
    }
</style>
<section class="block block-type-tags news-block">
    <header class="block-header">
        <h3>Наши новости</h3>
    </header>
    {foreach from=$aWall item=oWall}
        <div id="wall-item-{$oWall->getId()}">
            <div class="comment">
                <time datetime="{date_format date=$oWall->getDateAdd() format='c'}" class="comment-date">
                    {date_format date=$oWall->getDateAdd() hours_back="12" minutes_back="60" now="60" day="day H:i" format="j F Y, H:i"}
                </time>

                <div class="comment-content text" style="width: 100%; margin-left: 10px;">
                    {$oWall->getText()}
                </div>
            </div>
        </div>
    {/foreach}
</section>