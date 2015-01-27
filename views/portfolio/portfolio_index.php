<ul class="list-group">
    <? foreach ($portfolio as $portfolio): ?>
        <h1><a href="<?=BASE_URL?>portfolio/view/<?=$porfolio['sample_id']?>"><?=$portfolio['sample_subject']?></a></h1>
        <p><?=$portfolio['sample_text']?></p>


    <? endforeach ?>
</ul>





</br>
</br>
</hr>
