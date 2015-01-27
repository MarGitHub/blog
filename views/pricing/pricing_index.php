<ul class="list-group">
    <? foreach ($pricing as $pricing): ?>
        <h1><a href="<?=BASE_URL?>pricing/view/<?=$pricing['service_id']?>"><?=$pricing['service']?></a></h1>
        <p><?=$pricing['service_text']?></p><h3><?=$pricing['price']?></h3>


    <? endforeach ?>
</ul>





</br>
</br>
</hr>
